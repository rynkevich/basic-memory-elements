library ieee;
use ieee.std_logic_1164.all;	  

entity gated_d_ff is
	port(
		D, CE, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end gated_d_ff;

architecture behavioral of gated_d_ff is
begin
	process (CE, CLK, D)
		variable Temp: std_logic;
	begin
		if CE = '1' then 
			if rising_edge(CLK) then
				Temp := D;
			end if;
		end if;
		
		Q <= Temp;
		nQ <= not Temp;
	end process;
end behavioral;
	