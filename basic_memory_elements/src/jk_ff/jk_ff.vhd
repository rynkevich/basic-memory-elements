library ieee;
use ieee.std_logic_1164.all;	  

entity jk_ff is
	port(
		J, K, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end jk_ff;

architecture behavioral of jk_ff is
begin
	process(J, K, CLK)
		variable Temp: std_logic;
	begin
		if rising_edge(CLK) then 
			if J = '1' and K = '1' then
				Temp := not Temp;
			elsif K = '1' then
				Temp := '0';
			elsif J = '1' then
				Temp := '1';
			end if; 
		end if;
		
		Q <= Temp;
		nQ <= not Temp;
	end process;
end behavioral;
	