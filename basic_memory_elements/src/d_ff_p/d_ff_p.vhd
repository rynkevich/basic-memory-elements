library ieee;
use ieee.std_logic_1164.all;	  

entity d_ff_p is
	port(
		D, PRE, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end d_ff_p;

architecture behavioral of d_ff_p is
begin
	process (PRE, CLK, D)
		variable Temp: std_logic;
	begin
		if PRE = '1' then
			Temp := '1';
		elsif rising_edge(CLK) then
			Temp := D;
		end if;
		
		Q <= Temp;
		nQ <= not Temp;
	end process;
end behavioral;
	