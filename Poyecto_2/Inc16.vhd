library ieee;
use ieee.std_logic_1164.all;

entity Inc16 is
	Port(
		t 	: in std_logic_vector(15 downto 0);
		f : out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Inc16 is

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

	component halfAdder is
		Port(
			x	:	in std_logic;
			y	:	in	std_logic;
			sum : out std_logic;
			carry : out std_logic :='0'
		);
	end component;

begin
	halfAdder1 : halfAdder
		Port map(
			x => t(0),
			y => '1',
			sum => f(0),
			carry => carry1
		);

	halfAdder2 : halfAdder
		Port map(
			x => t(1),
			y => carry1,
			sum => f(1),
			carry => carry2
		);

	halfAdder3 : halfAdder
		Port map(
			x => t(2),
			y => carry2,
			sum => f(2),
			carry => carry3
		);

	halfAdder4 : halfAdder
		Port map(
			x => t(3),
			y => carry3,
			sum => f(3),
			carry => carry4
		);
		
	halfAdder5 : halfAdder
		Port map(
			x => t(4),
			y => carry4,
			sum => f(4),
			carry => carry5
		);
		
	halfAdder6 : halfAdder
		Port map(
			x => t(5),
			y => carry5,
			sum => f(5),
			carry => carry6
		);
		
	halfAdder7 : halfAdder
		Port map(
			x => t(6),
			y => carry6,
			sum => f(6),
			carry => carry7
		);
	halfAdder8 : halfAdder
		Port map(
			x => t(7),
			y => carry7,
			sum => f(7),
			carry => carry8
		);

	halfAdder9 : halfAdder
		Port map(
			x => t(8),
			y => carry8,
			sum => f(8),
			carry => carry9
		);
		
	halfAdder10 : halfAdder
		Port map(
			x => t(9),
			y => carry9,
			sum => f(9),
			carry => carry10
		);		
		
	halfAdder11 : halfAdder
		Port map(
			x => t(10),
			y => carry10,
			sum => f(10),
			carry => carry11
		);
		
		
	halfAdder12 : halfAdder
		Port map(
			x => t(11),
			y => carry11,
			sum => f(11),
			carry => carry12
		);
		
	halfAdder13 : halfAdder
		Port map(
			x => t(12),
			y => carry12,
			sum => f(12),
			carry => carry13
		);
		
	halfAdder14 : halfAdder
		Port map(
			x => t(13),
			y => carry1,
			sum => f(13),
			carry => carry14
		);
		
halfAdder15 : halfAdder
		Port map(
			x => t(14),
			y => carry14,
			sum => f(14),
			carry => carry15
		);
		
	halfAdder16 : halfAdder
		Port map(
			x => t(15),
			y => carry15,
			sum => f(15)
		);

end architecture;
