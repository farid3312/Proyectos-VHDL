-- Library and packages
library ieee;
use ieee.std_logic_1164.all;


-- Mux16(a= ,b= ,sel= ,out= ) /* Selects between two 16-bit inputs */

entity Mux16 is
	Port(
		x 	: in std_logic_vector(15 downto 0);
		y 	: in std_logic_vector(15 downto 0);
		sel: in std_logic;	
		f 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux16 is
	component Mux is
		Port(
			x	:	in 	std_logic;
			y	:	in		std_logic;
			sel:	in 	std_logic;
			f	:	out	std_logic
		);
	end component;
begin
	mux15: Mux
		Port map(
			x => x(15),
			y => y(15),
			sel => sel,
			f => f(15)
		);
	mux14: Mux
		Port map(
			x => x(14),
			y => y(14),
			sel => sel,
			f => f(14)
		);
	mux13: Mux
		Port map(
			x => x(13),
			y => y(13),
			sel => sel,
			f => f(13)
		);
	mux12: Mux
		Port map(
			x => x(12),
			y => y(12),
			sel => sel,
			f => f(12)
		);
	mux11: Mux
		Port map(
			x => x(11),
			y => y(11),
			sel => sel,
			f => f(11)
		);
	mux10: Mux
		Port map(
			x => x(10),
			y => y(10),
			sel => sel,
			f => f(10)
		);
	mux9: Mux
		Port map(
			x => x(9),
			y => y(9),
			sel => sel,
			f => f(9)
		);
	mux8: Mux
		Port map(
			x => x(8),
			y => y(8),
			sel => sel,
			f => f(8)
		);
	mux7: Mux
		Port map(
			x => x(7),
			y => y(7),
			sel => sel,
			f => f(7)
		);
	mux6: Mux
		Port map(
			x => x(6),
			y => y(6),
			sel => sel,
			f => f(6)
		);
	mux5: Mux
		Port map(
			x => x(5),
			y => y(5),
			sel => sel,
			f => f(5)
		);
	mux4: Mux
		Port map(
		   x => x(4),
			y => y(4),
			sel => sel,
			f => f(4)
		);
	mux3: Mux
		Port map(
			x => x(3),
			y => y(3),
			sel => sel,
			f => f(3)
		);
	mux2: Mux
		Port map(
			x => x(2),
			y => y(2),
			sel => sel,
			f => f(2)
		);
	mux1: Mux
		Port map(
			x => x(1),
			y => y(1),
			sel => sel,
			f => f(1)
		);
	mux0: Mux
		Port map(
			x => x(0),
			y => y(0),
			sel => sel,
			f => f(0)
		);

end architecture;