library IEEE;
use IEEE.std_logic_1164.all;

entity div2 is
  port(
	  operand : in std_logic_vector(7 downto 0);
	  result : out std_logic_vector(7 downto 0)
  );
end div2;

architecture synth of div2 is
begin
    --dividing binary number by 2 is similar to dividing decimal number by 10
    --we discard the LSB, aka right shift
    
    --in verilog it would be
    --result <= {0, operand[7:1]};
    result <= '0' & operand(7 downto 1);
end;