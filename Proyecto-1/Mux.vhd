library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Mux is
	port(
		x	:	in 	std_logic;
		y	:	in		std_logic;
		sel:	in 	std_logic;
		f	:	out	std_logic
	);
end entity;

-- Architecture (Implementation)
architecture arch of Mux is
signal x1, x2 : std_logic;

begin
	x1 <= ( not sel ) and x;
	x2 <= sel and y;
	f <= x1 or x2;
end architecture;