library ieee;
use ieee.std_logic_1164.all;

entity gated_d_ff_tb is
end gated_d_ff_tb;

architecture tb of gated_d_ff_tb is
	component gated_d_ff
		port(
			D, CE, CLK: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	signal D: std_logic := '0';
	signal CE: std_logic := '0';
	signal CLK: std_logic := '0';
	
	signal Q, nQ: std_logic;

	constant CLOCK_PERIOD: time := 10 ns;
	constant DATA_PERIOD: time := 40 ns;
	constant ENABLED_PERIOD: time := 80 ns;
begin
	behavioral: entity gated_d_ff(behavioral) port map(D, CE, CLK, Q, nQ);
	
	D <= not D after DATA_PERIOD / 2;
	CE <= not CE after ENABLED_PERIOD / 2;
	CLK <= not CLK after CLOCK_PERIOD / 2;
end tb;