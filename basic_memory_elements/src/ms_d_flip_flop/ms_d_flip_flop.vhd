library ieee;
use ieee.std_logic_1164.all;	  

entity ms_d_flip_flop is
	port(
		D, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end ms_d_flip_flop;

architecture structural of ms_d_flip_flop is
	component gated_d_latch is
		port(
			D, E: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	component inv is
		port(
			A: in std_logic;
			Z: out std_logic
		);
	end component;
	
	signal nCLK, Q_master: std_logic;
begin
	U1: inv port map(CLK, nCLK);
	U2: gated_d_latch port map(D => D, E => CLK, Q => Q_master);
	U3: gated_d_latch port map(D => Q_master, E => nCLK, Q => Q, nQ => nQ);
end structural;
	