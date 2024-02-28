library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sevenseg is
  port(
	  S : in unsigned(3 downto 0);
	  segments : out std_logic_vector(6 downto 0)
  );
end sevenseg;

architecture synth of sevenseg is
begin
    process(S) begin
        case(S) is
            --hex encoding
            when "0000" => segments <= "0000001"; -- 0
            when "0001" => segments <= "1001111"; -- 1
            when "0010" => segments <= "0010010"; -- 2
            when "0011" => segments <= "0000110"; -- 3
            when "0100" => segments <= "1001100"; -- 4
            when "0101" => segments <= "0100100"; -- 5
            when "0110" => segments <= "0100000"; -- 6
            when "0111" => segments <= "0001111"; -- 7
            when "1000" => segments <= "0000000"; -- 8
            when "1001" => segments <= "0000100"; -- 9
            when "1010" => segments <= "0001000"; -- A 10
            when "1011" => segments <= "1100000"; -- b 11
            when "1100" => segments <= "0110001"; -- C 12
            when "1101" => segments <= "1000010"; -- d 13
            when "1110" => segments <= "0110000"; -- E 14
            when others => segments <= "0111000"; -- F 15
        end case;
    end process;
end;