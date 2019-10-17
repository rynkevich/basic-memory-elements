library ieee;
use ieee.std_logic_1164.all;	  

entity gated_d_flip_flop is
	port(
		D, CE, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end gated_d_flip_flop;

architecture behavioral of gated_d_flip_flop is
begin
	process (CE, CLK)
	begin
		if CE = '1' then 
			if rising_edge(CLK) then
				Q <= D;
				nQ <= not D;
			end if;
		end if;
	end process;
end behavioral;
	