library ieee;
use ieee.std_logic_1164.all;

entity Add16 is
	Port(
		x 	: in std_logic_vector(15 downto 0);
		y 	: in std_logic_vector(15 downto 0);
		sum : out std_logic_vector(15 downto 0);
		carry : out std_logic
	);
end entity;

architecture arch of Add16 is
	signal carry1	: std_logic;
	signal carry2	: std_logic;
	signal carry3	: std_logic;
	signal carry4	: std_logic;
	signal carry5	: std_logic;
	signal carry6	: std_logic;
	signal carry7	: std_logic;
	signal carry8	: std_logic;
	signal carry9	: std_logic;
	signal carry10	: std_logic;
	signal carry11	: std_logic;
	signal carry12	: std_logic;
	signal carry13	: std_logic;
	signal carry14	: std_logic;
	signal carry15	: std_logic;

	component FullAdder is
		Port(
			x	:	in std_logic;
			y	:	in	std_logic;
			z	:	in	std_logic;	
			sum : out std_logic;
			carry : out std_logic
		);
	end component;

begin
	FullAdder1 : FullAdder
		Port map(
			x => x(0),
			y => y(0),
			z => '0',
			sum => sum(0),
			carry => carry1
		);

	FullAdder2 : FullAdder
		Port map(
			x => x(1),
			y => y(1),
			z => carry1,
			sum => sum(1),
			carry => carry2
		);

	FullAdder3 : FullAdder
		Port map(
			x => x(2),
			y => y(2),
			z => carry2,
			sum => sum(2),
			carry => carry3
		);

	FullAdder4 : FullAdder
		Port map(
			x => x(3),
			y => y(3),
			z => carry3,
			sum => sum(3),
			carry => carry4
		);
		
	FullAdder5 : FullAdder
		Port map(
			x => x(4),
			y => y(4),
			z => carry4,
			sum => sum(4),
			carry => carry5
		);
		
	FullAdder6 : FullAdder
		Port map(
			x => x(5),
			y => y(5),
			z => carry5,
			sum => sum(5),
			carry => carry6
		);
		
	FullAdder7 : FullAdder
		Port map(
			x => x(6),
			y => x(6),
			z => carry6,
			sum => sum(6),
			carry => carry7
		);
	FullAdder8 : FullAdder
		Port map(
			x => x(7),
			y => y(7),
			z => carry7,
			sum => sum(7),
			carry => carry8
		);

	FullAdder9 : FullAdder
		Port map(
			x => x(8),
			y => y(8),
			z => carry8,
			sum => sum(8),
			carry => carry9
		);
		
	FullAdder10 : FullAdder
		Port map(
			x => x(9),
			y => y(9),
			z => carry9,
			sum => sum(9),
			carry => carry10
		);		
		
	FullAdder11 : FullAdder
		Port map(
			x => x(10),
			y => y(10),
			z => carry10,
			sum => sum(10),
			carry => carry11
		);
		
		
	FullAdder12 : FullAdder
		Port map(
			x => x(11),
			y => y(11),
			z => carry11,
			sum => sum(11),
			carry => carry12
		);
		
	FullAdder13 : FullAdder
		Port map(
			x => y(12),
			y => y(12),
			z => carry12,
			sum => sum(12),
			carry => carry13
		);
		
	FullAdder14 : FullAdder
		Port map(
			x => x(13),
			y => y(13),
			z => carry13,
			sum => sum(13),
			carry => carry14
		);
		
	FullAdder15 : FullAdder
		Port map(
			x => x(14),
			y => y(14),
			z => carry14,
			sum => sum(14),
			carry => carry15
		);
		
	FullAdder16 : FullAdder
		Port map(
			x => x(15),
			y => y(15),
			z => carry15,
			sum => sum(15),
			carry => carry
		);

end architecture;