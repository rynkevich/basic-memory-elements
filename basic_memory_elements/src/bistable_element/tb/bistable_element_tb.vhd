library ieee;
use ieee.std_logic_1164.all;

entity bistable_element_tb is
end bistable_element_tb;

architecture tb of bistable_element_tb is
	component bistable_element
		port(
			Q, nQ: out std_logic
		);
	end component;
	
	signal Q, nQ: std_logic;
	signal Q_init, nQ_init: std_logic;
begin
	behavioral: entity bistable_element(behavioral) port map(Q, nQ);
	initialized: entity bistable_element(initialized) port map(Q_init, nQ_init);
end tb;