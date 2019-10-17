library ieee;
use ieee.std_logic_1164.all;	  

entity bistable_element is
	port(
		Q, nQ: out std_logic
	);
end bistable_element;

architecture behavioral of bistable_element is
	signal S1, S2: std_logic;
begin
	S1 <= not S2;
	S2 <= not S1;
	Q <= S1;
	nQ <= S2;
end behavioral;

architecture initialized of bistable_element is
	signal S1, S2: std_logic;
begin
	S1 <= '1';
	S2 <= not S1;
	Q <= not S2;
	nQ <= S2;
end initialized;
	