library ieee;
use ieee.std_logic_1164.all;

entity d_ff_c_tb is
end d_ff_c_tb;

architecture tb of d_ff_c_tb is
	component d_ff_c
		port(
			D, CLR, CLK: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	signal D: std_logic := '0';
	signal CLR: std_logic := '0';
	signal CLK: std_logic := '0';
	
	signal Q, nQ: std_logic;

	constant CLOCK_PERIOD: time := 10 ns;
	constant DATA_PERIOD: time := 40 ns;
	constant CLEAR_PERIOD: time := 80 ns;
begin
	behavioral: entity d_ff_c(behavioral) port map(D, CLR, CLK, Q, nQ);
	
	D <= not D after DATA_PERIOD / 2;
	CLR <= not CLR after CLEAR_PERIOD / 2;
	CLK <= not CLK after CLOCK_PERIOD / 2;
end tb;