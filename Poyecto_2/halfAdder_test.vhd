-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity HalfAdder_test is	
end entity;

-- Architecture (test process)
architecture arch_test of HalfAdder_test is

	-- Component declaration
	component HalfAdder
		port(
			x		:	in 	std_logic;
			y		:	in		std_logic;
			sum	:	out 	std_logic;
			carry :	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal x_test			: std_logic := '0';
	signal y_test			: std_logic := '0';
	signal sum_test		: std_logic;
	signal carry_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: HalfAdder 
		port map (
			x 		=> x_test,
			y 		=> y_test,
			sum 	=> sum_test,
			carry	=> carry_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of HalfAdder"	  
		severity note;
		
		x_test 	<= '0';
		y_test 	<= '0';		
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '0'
		  report "Failure for {a,b} = {0,0}"
		  severity failure;
		
		x_test 	<= '0';
		y_test 	<= '1';		
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '0'
		  report "Failure for {a,b} = {0,1}"
		  severity failure;
		
		x_test 	<= '1';
		y_test 	<= '0';		
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '0'
		  report "Failure for {a,b} = {1,0}"
		  severity failure;
		
		x_test 	<= '1';
		y_test 	<= '1';		
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '1'
		  report "Failure for {a,b} = {1,1}"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;