library ieee;
use ieee.std_logic_1164.all;

entity nor2 is
	port(
		A, B: in std_logic;
		Z: out std_logic
	);
end nor2;

architecture behavioral of nor2 is
begin
	Z <= not (A or B);
end behavioral;