library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity saturatingadd is
  port(
	  a : in unsigned(7 downto 0);
	  b : in unsigned(7 downto 0);
	  result : out unsigned(7 downto 0)
  );
end saturatingadd;

architecture synth of saturatingadd is
    signal sum : unsigned (8 downto 0);
begin
    process (a, b, sum) begin
        sum <= ("0" & a) + ("0" & b);
        if(sum(8)) then
            result <= 8d"255";
        else 
            result <= sum(7 downto 0);
        end if;
    end process;
end synth;