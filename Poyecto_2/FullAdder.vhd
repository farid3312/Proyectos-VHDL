--Sumador Completa
-- File Name: FullAdder.vhdl

-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

--Suma 3 entradas ;

entity fullAdder is
	Port(
		x 	: in std_logic;
		y 	: in std_logic;
		z  : in std_logic;	
		sum 	: out std_logic;
		carry : out std_logic
	);
end entity;

architecture arch of fullAdder is
	signal sum1: std_logic;
	signal carry1: std_logic;
	signal carry2: std_logic;
	
	component halfAdder is
		Port(
			x	:	in 	std_logic;
			y	:	in		std_logic;
			sum 	: out std_logic;
			carry : out std_logic
		);
	end component;
begin
	halfAdder1: halfAdder
		Port map(
			x => x,
			y => y,
			sum => sum1,
			carry => carry1
		);
	halfAdder2: halfAdder
		Port map(
			x => sum1,
			y => z,
			sum => sum,
			carry => carry2
		);
	
		carry <= carry1 or carry2;
		

end architecture;
