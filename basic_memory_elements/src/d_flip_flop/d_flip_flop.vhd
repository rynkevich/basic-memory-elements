library ieee;
use ieee.std_logic_1164.all;	  

entity d_flip_flop is
	port(
		D, CLK: in std_logic;
		Q, nQ: out std_logic
	);
end d_flip_flop;

architecture behavioral of d_flip_flop is
begin
	process (CLK)
	begin
		if rising_edge(CLK) then
			Q <= D;
			nQ <= not D;
		end if;
	end process;
end behavioral;
	