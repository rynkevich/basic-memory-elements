library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop_tb is
end d_flip_flop_tb;

architecture tb of d_flip_flop_tb is
	component d_flip_flop
		port(
			D, CLK: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	signal D: std_logic := '0';
	signal CLK: std_logic := '0';
	
	signal Q, nQ: std_logic;
	
	constant CLOCK_PERIOD: time := 10 ns;
	constant DATA_PERIOD: time := 40 ns; 
begin
	behavioral: entity d_flip_flop(behavioral) port map(D, CLK, Q, nQ);
		
	D <= not D after DATA_PERIOD / 2;
	CLK <= not CLK after CLOCK_PERIOD / 2;
end tb;