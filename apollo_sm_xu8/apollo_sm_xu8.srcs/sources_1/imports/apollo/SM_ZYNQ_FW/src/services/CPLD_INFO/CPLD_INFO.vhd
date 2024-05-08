library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPLD_info is
  generic (
    COUNT_FOR_VALID : integer := 10);
  port (
    clk             : in  std_logic;
    reset           : in  std_logic;
    clk_div         : in  std_logic_vector(7 downto 0);    
    CPLD_clk_out    : out std_logic;
    CPLD_info_in    : in  std_logic;
    CPLD_info_data  : out std_logic_vector(31 downto 0);
    raw_data_latch  : out std_logic_vector(127 downto 0);
    raw_data        : out std_logic_vector(127 downto 0);
    CPLD_info_valid : out std_logic);  
end entity CPLD_info;

architecture behavioral of CPLD_info is
  signal clk_div_counter : unsigned(7 downto 0);
  signal clk_en : std_logic;
 
  constant FRAME_LENGTH : integer := 128;
  signal frame_pos   : integer range 0 to FRAME_LENGTH := 0;
  signal frame       : std_logic_vector(FRAME_LENGTH-1 downto 0);
  alias frame_header : std_logic_vector((FRAME_LENGTH/4) -1 downto 0) is frame(4*FRAME_LENGTH/4 - 1 downto 3*FRAME_LENGTH/4);
  alias frame_zero   : std_logic_vector((FRAME_LENGTH/4) -1 downto 0) is frame(3*FRAME_LENGTH/4 - 1 downto 2*FRAME_LENGTH/4);
  alias frame_data   : std_logic_vector((FRAME_LENGTH/4) -1 downto 0) is frame(2*FRAME_LENGTH/4 - 1 downto 1*FRAME_LENGTH/4);
  alias frame_ones   : std_logic_vector((FRAME_LENGTH/4) -1 downto 0) is frame(1*FRAME_LENGTH/4 - 1 downto 0*FRAME_LENGTH/4);
  type intf_state_t is (SM_RESET,
                        SM_START,
                        SM_READ_FRAME,
                        SM_INCR_ALIGN);
  signal intf_state : intf_state_t;
  signal state_vec  : std_logic_vector(1 downto 0);  
  signal valid_count : integer range 0 to COUNT_FOR_VALID;
  
  signal CPLD_clk_out_buf : std_logic;
begin  -- architecture behavioral

  state_vec <= "00" when intf_state = SM_RESET else
               "01" when intf_state = SM_START else
               "10" when intf_state = SM_READ_FRAME else
               "11";-- when intf_state = SM_INCR_ALIGN;
  
  clk_en_generator: process (clk, reset) is
  begin  -- process clk_en_generator
    if reset = '1' then               -- asynchronous reset (active low)
      clk_div_counter <= (others => '0');
      clk_en <= '0';
    elsif clk'event and clk = '1' then  -- rising clock edge
      clk_en <= '0';
      if std_logic_vector(clk_div_counter) = clk_div then
        clk_div_counter <= (others => '0');
        clk_en <= '1';
      else
        clk_div_counter <= clk_div_counter + 1;
      end if;
    end if;
  end process clk_en_generator;

  raw_data <= frame;
  CPLD_info_valid <= '1' when valid_count = COUNT_FOR_VALID else '0';  
  state_machine: process (clk, reset) is
  begin  -- process state_machine
    if reset = '1' then
      intf_state  <= SM_RESET;
      valid_count <= 0;
    elsif clk'event and clk = '1' then  -- rising clock edge
      if clk_en = '1' then
        case intf_state is
          -------------------------------------------------------------------------
          when SM_RESET =>          
            intf_state <= SM_START;
            valid_count <= 0;
          when SM_START =>
            intf_state <= SM_READ_FRAME;
          -------------------------------------------------------------------------
          when SM_READ_FRAME =>
            if ( frame_pos = FRAME_LENGTH and
                 CPLD_clk_out_buf = '0') then --rising edge
              raw_data_latch <= frame;
              if ((frame_header = x"55555555") and
                  (frame_zero   = x"00000000") and
                  (frame_ones   = x"ffffffff")) then
                CPLD_info_data  <= frame_data;                
                --keep track of the number of times we got good data
                if valid_count /= COUNT_FOR_VALID then
                  valid_count <= valid_count + 1;
                end if;
                intf_state <= SM_START;
              else
                intf_state <= SM_INCR_ALIGN;
              end if;
            else
              -- stay in this state
            end if;
          -------------------------------------------------------------------------
          when SM_INCR_ALIGN =>
            valid_count <= 0;            
            intf_state  <= SM_START;           
          when others => null;
        end case;
      end if;
    end if;
  end process state_machine;

  
  CPLD_clk_out <= CPLD_clk_out_buf;
  CPLD_clk_proc: process (clk, reset) is
  begin  -- process CPLD_clk_proc
    if reset = '1' then 
      CPLD_clk_out_buf <= '0';
    elsif clk'event and clk = '1' then  -- rising clock edge
      if clk_en = '1' then
        case intf_state is
          ------------------------------------------------------------------------
          when SM_RESET =>
            CPLD_clk_out_buf <= '0';
          -------------------------------------------------------------------------
          when SM_START =>
            CPLD_clk_out_buf <= '0'; -- get the CPLD to output a bit            
          -------------------------------------------------------------------------
          when SM_READ_FRAME =>
            if frame_pos = FRAME_LENGTH then
              if CPLD_clk_out_buf = '1' then
                CPLD_clk_out_buf <= '0';
              end if;
            else
              CPLD_clk_out_buf <= not CPLD_clk_out_buf;              
            end if;
          -------------------------------------------------------------------------
          when SM_INCR_ALIGN =>
            CPLD_clk_out_buf <= not CPLD_clk_out_buf;              
          when others => null;
        end case;
      end if;
    end if;
  end process CPLD_clk_proc;


  capture_data: process (clk, reset) is
  begin  -- process capture_data
    if reset = '1' then 
      frame_pos <= 0;      
    elsif clk'event and clk = '1' then  -- rising clock edge
      if clk_en = '1' then
        case intf_state is
          ------------------------------------------------------------------------
          when SM_RESET =>
            frame_pos <= 0;
          -------------------------------------------------------------------------
          when SM_START =>
            frame_pos <= 0;
          -------------------------------------------------------------------------
          when SM_READ_FRAME =>
            if CPLD_clk_out_buf = '1' then  --This is the falling edge given
                                            --how clk_en works
              --capture data
              frame <= frame(frame'left-1 downto 0) & CPLD_info_in;
              if frame_pos = FRAME_LENGTH then
                frame_pos <= 0;
              else
                frame_pos <= frame_pos + 1;
              end if;
              -- clock low
            end if;
          when others => null;
        end case;
      end if;
    end if;
  end process capture_data;


--  CPLD_DEBUG_0 : entity work.CPLD_DEBUG
--    port map (
--      clk => clk,
--      probe0 => state_vec,
--      probe1 => std_logic_vector(to_unsigned(frame_pos,8)),
--      probe2 => frame,
--      probe3(0) => CPLD_clk_out_buf,
--      probe3(1) => CPLD_info_in,
--      probe4(7 downto 0) => std_logic_vector(clk_div_counter),
--      probe4(8)  => clk_en,
--      probe5 => raw_data_latch);

  
end architecture behavioral;
