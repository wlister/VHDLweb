library IEEE;
use IEEE.std_logic_1164.all;

entity and4 is
  port(
	  a : in std_logic;
	  b : in std_logic;
	  c : in std_logic;
	  y : out std_logic
  );
end and4;

architecture synth of and4 is
    component nand4 is
        port(
            a : in std_logic;
            b : in std_logic;
            c : in std_logic;
            y : out std_logic
        );
    end component;

    signal not_y : std_logic;
begin
    first_nand : nand4 port map(a, b, c, not_y);
    y <= not not_y;
end;