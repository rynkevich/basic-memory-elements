library ieee;
use ieee.std_logic_1164.all;

entity gated_d_latch_tb is
end gated_d_latch_tb;

architecture tb of gated_d_latch_tb is
	component gated_d_latch
		port(
			D, E: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	signal D: std_logic := '0';
	signal E: std_logic := '0';
	
	signal Q_beh, nQ_beh: std_logic;
	signal Q_struct, nQ_struct: std_logic;
	
	signal Error: boolean;
	
	function get_error(
		Q_beh, Q_struct, nQ_beh, nQ_struct: std_logic
	) return boolean is
    begin
        return (Q_beh /= Q_struct) or (nQ_beh /= nQ_struct);
    end function;
	
	constant DATA_PERIOD: time := 20 ns;
	constant ENABLED_PERIOD: time := 30 ns;
begin
	behavioral: entity gated_d_latch(behavioral) port map(D, E, Q_beh, nQ_beh);
	structural: entity gated_d_latch(structural) port map(D, E, Q_struct, nQ_struct);
	
	D <= not D after DATA_PERIOD / 2;
	E <= not E after ENABLED_PERIOD / 2;
	Error <= get_error(Q_beh, Q_struct, nQ_beh, nQ_struct);
end tb;