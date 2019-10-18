library ieee;
use ieee.std_logic_1164.all;	  

entity rs_ff is
	port(
		R, S, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end rs_ff;

architecture behavioral of rs_ff is
begin
	process (R, S, CLK)
		variable Temp: std_logic; 
	begin
		if rising_edge(CLK) then
			if S = '1' and R = '1' then
				Temp := 'Z';
			elsif R = '1' then
				Temp := '0';
			elsif S = '1' then
				Temp := '1';
			end if;
		end if;
		
		Q <= Temp;
		nQ <= not Temp;
	end process;
end behavioral;
	