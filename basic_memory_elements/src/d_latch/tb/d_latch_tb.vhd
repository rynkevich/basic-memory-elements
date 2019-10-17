library ieee;
use ieee.std_logic_1164.all;

entity d_latch_tb is
end d_latch_tb;

architecture tb of d_latch_tb is
	component d_latch
		port(
			D: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	signal D: std_logic := '0';
	
	signal Q_beh, nQ_beh: std_logic;
	signal Q_struct, nQ_struct: std_logic;
	
	signal Error: boolean;
	
	function get_error(
		Q_beh, Q_struct, nQ_beh, nQ_struct: std_logic
	) return boolean is
    begin
        return (Q_beh /= Q_struct) or (nQ_beh /= nQ_struct);
    end function;
	
	constant DATE_PERIOD: time := 20 ns;
begin
	behavioral: entity d_latch(behavioral) port map(D => D, Q => Q_beh, nQ => nQ_beh);
	structural: entity d_latch(structural) port map(D => D, Q => Q_struct, nQ => nQ_struct);
	
	D <= not D after DATE_PERIOD / 2;
	
	Error <= get_error(Q_beh, Q_struct, nQ_beh, nQ_struct);
end tb;