library ieee;
use ieee.std_logic_1164.all;

entity rs_latch_tb is
end rs_latch_tb;

architecture tb of rs_latch_tb is
	component rs_latch
		port(
			R, S: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	signal R, S: std_logic;
	
	signal Q_beh, nQ_beh: std_logic;
	signal Q_struct, nQ_struct: std_logic;
	
	signal Error: boolean;
	
	function get_error(
		Q_beh, Q_struct, nQ_beh, nQ_struct: std_logic
	) return boolean is
    begin
        return (Q_beh /= Q_struct) or (nQ_beh /= nQ_struct);
    end function;
begin
	behavioral: entity rs_latch(behavioral) port map(R => R, S => S, Q => Q_beh, nQ => nQ_beh);
	structural: entity rs_latch(structural) port map(R => R, S => S, Q => Q_struct, nQ => nQ_struct);
	
	process
	begin
		R <= '0';
		S <= '0';
		Error <= get_error(Q_beh, Q_struct, nQ_beh, nQ_struct);
		wait for 10 ns;	 
		
		R <= '1';
		S <= '0';
		Error <= get_error(Q_beh, Q_struct, nQ_beh, nQ_struct);
		wait for 10 ns;	
		
		R <= '0';
		S <= '0';
		Error <= get_error(Q_beh, Q_struct, nQ_beh, nQ_struct);
		wait for 10 ns;	 
		
		R <= '0';
		S <= '1';
		Error <= get_error(Q_beh, Q_struct, nQ_beh, nQ_struct);
		wait for 10 ns;	  
		
		R <= '0';
		S <= '0';
		Error <= get_error(Q_beh, Q_struct, nQ_beh, nQ_struct);
		wait for 10 ns;		
		
		R <= '1';
		S <= '1';
		Error <= get_error(Q_beh, Q_struct, nQ_beh, nQ_struct);
		wait for 10 ns;	
	end process;
end tb;