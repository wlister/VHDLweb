library IEEE;
use IEEE.std_logic_1164.all;

entity majority is
    port (
        votes : in std_logic_vector (2 downto 0);
        y: out std_logic
    );
end majority;

architecture synth of majority is 
begin
    y <= (votes(0) and votes(1)) or
        (votes(0) and votes(2)) or
        (votes(1) and votes(2));
end;