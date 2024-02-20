library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu is
  port(
	  a : in unsigned(3 downto 0);
	  b : in unsigned(3 downto 0);
	  s : in std_logic_vector(1 downto 0);
	  y : out unsigned(3 downto 0)
  );
end alu;

architecture synth of alu is
begin
    alu_process: process(a, b, s) begin
        alu_case: case(s) is
            when "00" =>
                y <= A and B;
            when "01" =>
                y <= A or B;
            when "10" =>
                y <= A + B;
            when "11" =>
                y <= A - b;
            when others =>
                y <= (others => '0');
        end case alu_case;
    end process alu_process;
end;

