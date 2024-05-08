--This file was auto-generated.
--Modifications might be lost.
library IEEE;
use IEEE.std_logic_1164.all;


package SM_INFO_CTRL is
  type SM_INFO_DNA_MON_t is record
    VALID                      :std_logic;   
    WORD_0                     :std_logic_vector(31 downto 0);
    WORD_1                     :std_logic_vector(31 downto 0);
    WORD_2                     :std_logic_vector(31 downto 0);
  end record SM_INFO_DNA_MON_t;


  type SM_INFO_MON_t is record
    GLOBAL_DATE                :std_logic_vector(31 downto 0);
    GLOBAL_TIME                :std_logic_vector(31 downto 0);
    GLOBAL_VER                 :std_logic_vector(31 downto 0);
    GLOBAL_SHA                 :std_logic_vector(31 downto 0);
    TOP_VER                    :std_logic_vector(31 downto 0);
    TOP_SHA                    :std_logic_vector(31 downto 0);
    CON_VER                    :std_logic_vector(31 downto 0);
    CON_SHA                    :std_logic_vector(31 downto 0);
    HOG_VER                    :std_logic_vector(31 downto 0);
    HOG_SHA                    :std_logic_vector(31 downto 0);
    DNA                        :SM_INFO_DNA_MON_t;            
  end record SM_INFO_MON_t;




end package SM_INFO_CTRL;