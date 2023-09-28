-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity FullAdder_test is	
end entity;

-- Architecture (test process)
architecture arch_test of FullAdder_test is

	-- Component declaration
	component fullAdder
		port(
	   x 	: in std_logic;
		y 	: in std_logic;
		z  : in std_logic;	
		sum 	: out std_logic;
		carry : out std_logic
		);
	end component;
	
	-- Signal declaration
	signal  x_test :  std_logic;
	signal 	y_test : std_logic;
	signal	z_test : std_logic;	
	signal	sum_test :  std_logic;
	signal	carry_test :  std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: fullAdder 
		port map (
			x => x_test,
			y => y_test,
			z => z_test,
			sum => sum_test,
			carry => carry_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of FullAdder_test"	  
	  severity note;
		
		x_test <= '0'; 
		y_test <= '0';
		z_test <= '0';
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '0'
		  report "Failure [x,y,z]=[0,0,0]"
		  severity failure;
		  
	   x_test <= '0'; 
		y_test <= '0';
		z_test <= '1';
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '0'
		  report "Failure [x,y,z]=[0,0,1]"
		  severity failure;
		  
		x_test <= '0'; 
		y_test <= '1';
		z_test <= '1';
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '1'
		  report "Failure [x,y,z]=[0,1,1]"
		  severity failure;
		  
		x_test <= '1'; 
		y_test <= '1';
		z_test <= '1';
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '1'
		  report "Failure [x,y,z]=[1,1,1]"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;