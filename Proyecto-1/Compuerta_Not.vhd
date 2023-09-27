-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)

entity Compuerta_Not is
	port(
		x	:	in 	std_logic;
		f	:	out	std_logic
	);
end entity;

-- Architecture (Implementation)

architecture arch of Compuerta_Not is
begin
	f <= x nand x;
end architecture;
