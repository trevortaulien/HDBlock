library ieee;
use ieee.std_logic_1164.all;

entity SB1 is
  port(
    I_CLK   : in std_logic;
    I_RESET : in std_logic;
  
    I_P0    : in std_logic;

    O_P0    : out std_logic
  );
end SB1;

architecture RTL is

    component SB1_0 is
      port(
          I_CLK   : in std_logic;
          I_RESET : in std_logic;
      
          I_P0    : in std_logic;
      
          O_P0    : out std_logic
      );
    end SB1_0;

    component SB1_1 is
        port(
            I_CLK   : in std_logic;
            I_RESET : in std_logic;
        
            I_P0    : in std_logic;
        
            O_P0    : out std_logic
        );
      end SB1_1;

    signal sb1_0_out, sb1_1_out;

    begin

    O_P0 <= sb1_0_out and sb1_1_out;

    U_SB1_0 : SB1_0
      port map(
        I_CLK => I_CLK,
        I_RESET => I_RESET,
        
        I_P0 => I_P0,

        O_P0 => sb1_0_out
      );

    U_SB1_1 : SB1_1
      port map(
        I_CLK => I_CLK,
        I_RESET => I_RESET,
        
        I_P0 => I_P0,

        O_P0 => sb1_1_out
      );

end RTL;