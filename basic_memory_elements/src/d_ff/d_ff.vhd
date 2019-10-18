library ieee;
use ieee.std_logic_1164.all;	  

entity d_ff is
	port(
		D, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end d_ff;

architecture behavioral of d_ff is
begin
	process (D, CLK)
		variable Temp: std_logic;
	begin
		if rising_edge(CLK) then
			Temp := D;
		end if;
		
		Q <= Temp;
		nQ <= not Temp;
	end process;
end behavioral;
	