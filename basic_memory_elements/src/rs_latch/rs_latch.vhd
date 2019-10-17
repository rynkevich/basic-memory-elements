library ieee;
use ieee.std_logic_1164.all;	  

entity rs_latch is
	port(
		R, S: in std_logic;
		Q, nQ: out std_logic
	);
end rs_latch;

architecture behavioral of rs_latch is
	signal S1, S2: std_logic;
begin
	S1 <= S nor S2;
	S2 <= R nor S1;
	nQ <= S1;
	Q <= S2;
end behavioral;

architecture structural of rs_latch is
	component nor2 is
		port(
			A, B: in std_logic;
			Z: out std_logic
		);
	end component;
	
	signal S1, S2: std_logic;
begin
	U1: nor2 port map(A => S2, B => S, Z => S1);
	U2: nor2 port map(A => S1, B => R, Z => S2);
	nQ <= S1;
	Q <= S2;
end structural;
	