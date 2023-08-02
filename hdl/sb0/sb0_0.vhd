library ieee;
use ieee.std_logic_1164.all;

entity SB0_0 is
  port(
    I_CLK   : in std_logic;
    I_RESET : in std_logic;
  
    I_P0    : in std_logic;

    O_P0    : out std_logic
  );
end SB0_0;

architecture RTL is

    begin

    O_P0 <= '0';

end RTL;