library IEEE;
use IEEE.std_logic_1164.all;

entity thermometer is
  port(
	  value : in std_logic_vector(2 downto 0);
	  therm : out std_logic_vector(6 downto 0)
  );
end thermometer;

architecture synth of thermometer is
begin
    process(value) begin
        case value is
            when "001" =>
                therm <= "0000001";
            when "010" =>
                therm <= "0000011";
            when "011" =>
                therm <= "0000111";
            when "100" =>
                therm <= "0001111";
            when "101" =>
                therm <= "0011111";
            when "110" =>
                therm <= "0111111";
            when "111" =>
                therm <= "1111111";
            when others =>
                therm <= "0000000";
        end case;
    end process;
end architecture;