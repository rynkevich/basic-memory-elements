library ieee;
use ieee.std_logic_1164.all;	  

entity d_ff_c is
	port(
		D, CLR, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end d_ff_c;

architecture behavioral of d_ff_c is
begin
	process (CLR, CLK, D)
		variable Temp: std_logic;
	begin
		if CLR = '1' then
			Temp := '0';
		elsif rising_edge(CLK) then
			Temp := D;
		end if;
		
		Q <= Temp;
		nQ <= not Temp;
	end process;
end behavioral;
	