library ieee;
use ieee.std_logic_1164.all;

entity rs_ff_tb is
end rs_ff_tb;

architecture tb of rs_ff_tb is
	component rs_ff
		port(
			R, S, CLK: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	signal R: std_logic := '0';
	signal S: std_logic := '0';
	signal CLK: std_logic := '0';
	
	signal Q, nQ: std_logic;

	constant CLOCK_PERIOD: time := 10 ns;
	constant RESET_PERIOD: time := 40 ns;
	constant SET_PERIOD: time := 80 ns;
begin
	behavioral: entity rs_ff(behavioral) port map(R, S, CLK, Q, nQ);
	
	R <= not R after RESET_PERIOD / 2;
	S <= not S after SET_PERIOD / 2;
	CLK <= not CLK after CLOCK_PERIOD / 2;
end tb;