library ieee;
use ieee.std_logic_1164.all;	  

entity d_latch is
	port(
		D: in std_logic;
		Q, nQ: out std_logic
	);
end d_latch;

architecture behavioral of d_latch is
begin
	Q <= D;
	nQ <= not D;
end behavioral;

architecture structural of d_latch is
	component rs_latch is
		port(
			R, S: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	component inv is
		port(
			A: in std_logic;
			Z: out std_logic
		);
	end component;
	
	signal nD: std_logic;
begin
	U1: inv port map(D, nD);
	U2: rs_latch port map(R => nD, S => D, Q => Q, nQ => nQ);
end structural;
	