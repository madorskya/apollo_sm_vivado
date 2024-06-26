----------------------------------------------------------------------------------
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;
--use ieee.std_logic_arith.all;

package types is  
  subtype slv_2_t  is std_logic_vector( 1 downto 0);
  subtype slv_3_t  is std_logic_vector( 2 downto 0);
  subtype slv_4_t  is std_logic_vector( 3 downto 0);
  subtype slv_5_t  is std_logic_vector( 4 downto 0);
  subtype slv_6_t  is std_logic_vector( 5 downto 0);
  subtype slv_7_t  is std_logic_vector( 6 downto 0);
  subtype slv_8_t  is std_logic_vector( 7 downto 0);
  subtype slv_9_t  is std_logic_vector( 8 downto 0);
  subtype slv_10_t is std_logic_vector( 9 downto 0);
  subtype slv_11_t is std_logic_vector(10 downto 0);
  subtype slv_12_t is std_logic_vector(11 downto 0);
  subtype slv_13_t is std_logic_vector(12 downto 0);
  subtype slv_14_t is std_logic_vector(13 downto 0);
  subtype slv_15_t is std_logic_vector(14 downto 0);
  subtype slv_16_t is std_logic_vector(15 downto 0);
  subtype slv_24_t is std_logic_vector(23 downto 0);
  subtype slv_26_t is std_logic_vector(25 downto 0);
  subtype slv_32_t is std_logic_vector(31 downto 0);
  subtype slv_40_t is std_logic_vector(39 downto 0);
  subtype slv_64_t is std_logic_vector(63 downto 0);
  
  type slv4_array_t   is array (integer range <>) of std_logic_vector(  3 downto 0);
  type slv5_array_t   is array (integer range <>) of std_logic_vector(  4 downto 0);
  type slv6_array_t   is array (integer range <>) of std_logic_vector(  5 downto 0);
  type slv7_array_t   is array (integer range <>) of std_logic_vector(  6 downto 0);
  type slv8_array_t   is array (integer range <>) of std_logic_vector(  7 downto 0);
  type slv9_array_t   is array (integer range <>) of std_logic_vector(  8 downto 0);
  type slv10_array_t  is array (integer range <>) of std_logic_vector(  9 downto 0);
  type slv11_array_t  is array (integer range <>) of std_logic_vector( 10 downto 0);
  type slv12_array_t  is array (integer range <>) of std_logic_vector( 11 downto 0);
  type slv16_array_t  is array (integer range <>) of std_logic_vector( 15 downto 0);
  type slv20_array_t  is array (integer range <>) of std_logic_vector( 19 downto 0);
  type slv24_array_t  is array (integer range <>) of std_logic_vector( 23 downto 0);
  type slv32_array_t  is array (integer range <>) of std_logic_vector( 31 downto 0);
  type slv36_array_t  is array (integer range <>) of std_logic_vector( 35 downto 0);
  type slv40_array_t  is array (integer range <>) of std_logic_vector( 39 downto 0);
  type slv48_array_t  is array (integer range <>) of std_logic_vector( 47 downto 0);
  type slv64_array_t  is array (integer range <>) of std_logic_vector( 63 downto 0);
  type slv128_array_t is array (integer range <>) of std_logic_vector(127 downto 0);

  subtype uint32_t is unsigned(31 downto 0);
  subtype uint26_t is unsigned(25 downto 0);
  subtype uint27_t is unsigned(26 downto 0);

  type u16_array_t is array (integer range <>) of unsigned(47 downto 0);

  type int8_array_t is array (integer range <>) of integer range 0 to 7;

  type int_array_t  is array (integer range <>) of integer;

  function log2 (val: INTEGER) return natural;
    

end package types;

package body types is

  function log2 (val: INTEGER) return natural is
    variable res : natural;
  begin
    for i in 0 to 31 loop
      if (val <= (2**i)) then
        res := i;
        exit;
      end if;
    end loop;
    return res;
  end function Log2;

              
  

end package body types;

