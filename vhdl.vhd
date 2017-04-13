library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity comparateur is
    port(
    N     : in std_logic_vector (3 downto 0);
    S1,S2,S3    : out std_logic
        );

end comparateur;


architecture equation of comparateur is

signal A,B,C,D : std_logic;

begin

D <= N(0);
C <= N(1);
B <= N(2);
A <= N(3);

-- équation ou affectation simple --

S1 <= (not(A) or not(C)) and (not(A) or not(B)) and (A or B or C);


-- affectation conditionnelle --

S2 <=  '1' when (N >= 2) and (N <= 9) else '0';


-- affectation sélective --

with N select
S3 <= '1' when "0010",
      '1' when "0011",
      '1' when "0100",
      '1' when "0101",
      '1' when "0110",
      '1' when "0111",
      '1' when "1000",
      '1' when "1001",
      '0' when others;

end equation;


