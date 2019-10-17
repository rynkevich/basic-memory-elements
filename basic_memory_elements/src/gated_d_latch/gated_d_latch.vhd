library ieee;
use ieee.std_logic_1164.all;	  

entity gated_d_latch is
	port(
		D, E: in std_logic;
		Q, nQ: out std_logic
	);
end gated_d_latch;

architecture behavioral of gated_d_latch is
begin
	process (E)
	begin
		if E = '1' then
			Q <= D;
			nQ <= not D;
		end if;
	end process;
end behavioral;

architecture structural of gated_d_latch is
	component rs_latch is
		port(
			R, S: in std_logic;
			Q, nQ: out std_logic
		);
	end component;
	
	component inv is
		port(
			A: in std_logic;
			Z: out std_logic
		);
	end component;
	
	component and2 is
		port(
			A, B: in std_logic;
			Z: out std_logic
		);
	end component;
	
	signal nD, S, R: std_logic;
begin
	U1: inv port map(D, nD);
	U2: and2 port map(E, D, S);
	U3: and2 port map(E, nD, R);
	U4: rs_latch port map(R => R, S => S, Q => Q, nQ => nQ);
end structural;
	