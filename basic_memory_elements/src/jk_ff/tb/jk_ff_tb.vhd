library ieee;
use ieee.std_logic_1164.all;

entity jk_ff_tb is
end jk_ff_tb;

architecture tb of jk_ff_tb is
	component jk_ff
		port(
			J, K, CLK: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	signal J: std_logic := '0';
	signal K: std_logic := '0';
	signal CLK: std_logic := '0';
	
	signal Q, nQ: std_logic;

	constant CLOCK_PERIOD: time := 10 ns;
	constant J_PERIOD: time := 40 ns;
	constant K_PERIOD: time := 80 ns;
begin
	behavioral: entity jk_ff(behavioral) port map(J, K, CLK, Q, nQ);
	
	J <= not J after J_PERIOD / 2;
	K <= not K after K_PERIOD / 2;
	CLK <= not CLK after CLOCK_PERIOD / 2;
end tb;