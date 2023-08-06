library ieee;
use ieee.std_logic_1164.all;

entity hdl_top is
  port(
    I_CLK   : in std_logic;
    I_RESET : in std_logic;
  
    I_P0    : in std_logic;

    O_P0    : out std_logic
  );
end hdl_top;

architecture RTL is

    component SB0 is
      port(
        I_CLK   : in std_logic;
        I_RESET : in std_logic;
      
        I_P0    : in std_logic;
        
        O_P0    : out std_logic
      );
    end SB0;

    component SB1 is
      port(
          I_CLK   : in std_logic;
          I_RESET : in std_logic;
      
          I_P0    : in std_logic;
      
          O_P0    : out std_logic
      );
    end SB1;

    signal sb0_out, sb1_out;

    begin

    O_P0 <= sb0_out and sb1_out;

    U_SB0 : SB0
      port map(
        I_CLK => I_CLK,
        I_RESET => I_RESET,
        
        I_P0 => I_P0,

        O_P0 => sb0_out
      );

    U_SB1 : SB1
      port map(
        I_CLK => I_CLK,
        I_RESET => I_RESET,
        
        I_P0 => I_P0,

        O_P0 => sb1_out
      );

end RTL;