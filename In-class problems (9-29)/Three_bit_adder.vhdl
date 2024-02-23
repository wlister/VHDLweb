library IEEE;
use IEEE.std_logic_1164.all;

entity adderlogic is
    port(
        a : in std_logic_vector (2 downto 0);
        b : in std_logic_vector (2 downto 0);
        sum : out std_logic_vector (3 downto 0)
    );
end adderlogic;

architecture synth of adderlogic is
    signal carry : std_logic_vector (2 downto 0);
begin
    --Yeah, we could've done it easily in a few lines without a loop
    --but a loop allows us to easily change the numbers for lets say a 
    --100 bit adder instead of a three bit adder
    process(a, b, carry) begin
        carry(0) <= a(0) and b(0);
        sum(0) <= a(0) xor b(0);
        
        for i in 1 to 2 loop
            carry(i) <= (a(i) and b(i)) or (carry(i - 1) and (a(i) xor b(i)));
            sum(i) <= a(i) xor b(i) xor carry(i - 1);
        end loop;
        
        sum(3) <= carry(2);
    end process;
end synth;