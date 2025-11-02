library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FA is
    port (
        A, B, Cin : in  STD_LOGIC;
        S, Co     : out STD_LOGIC
    );
end FA;

architecture behavior of FA is
begin
    S  <= A XOR B XOR Cin;
    Co <= (A AND B) OR (B AND Cin) OR (A AND Cin);
end behavior;

library IEEE ; 
use IEEE.STD_LOGIC_1164.ALL;


entity ADDER_4_BIT is
    port (
        A, B : in  STD_LOGIC_VECTOR(3 downto 0);
        Cin  : in  STD_LOGIC;
        S    : out STD_LOGIC_VECTOR(3 downto 0);
        Co   : out STD_LOGIC
    );
end ADDER_4_BIT;

architecture structural of ADDER_4_BIT is
    component FA
        port (
            A, B, Cin : in  STD_LOGIC;
            S, Co     : out STD_LOGIC
        );
    end component;

    signal C : STD_LOGIC_VECTOR(2 downto 0);

begin
    FA0 : FA port map(A(0), B(0), Cin,  S(0), C(0));
    FA1 : FA port map(A(1), B(1), C(0), S(1), C(1));
    FA2 : FA port map(A(2), B(2), C(1), S(2), C(2));
    FA3 : FA port map(A(3), B(3), C(2), S(3), Co);
end structural;
