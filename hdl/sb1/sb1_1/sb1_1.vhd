library ieee;
use ieee.std_logic_1164.all;

entity SB1_1 is
  port(
    I_CLK   : in std_logic;
    I_RESET : in std_logic;
  
    I_P0    : in std_logic;

    O_P0    : out std_logic
  );
end SB1_1;