library IEEE;
use IEEE.std_logic_1164.all;

entity sevenseg01 is
  port(
	  S : in std_logic;
	  segments : out std_logic_vector(6 downto 0)
  );
end sevenseg01;

architecture synth of sevenseg01 is
begin
    --yeah I know I could've used a simple when else statement, but for the sake of
    --flexibility lets use 
    process(S) begin
        case S is
            when '0' =>
                segments <= "1111110";
            when '1' =>
                segments <= "0110000";
            when others =>
                segments <= "0000000";
        end case;
    end process;
end;