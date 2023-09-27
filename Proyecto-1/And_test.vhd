-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity And_test is	
      port(
  			x	:	in 	std_logic;
			y	:	in		std_logic;
			f  :	out 	std_logic
			);
end And_test;

-- Architecture (test process)
architecture And_arch_test of And_test is

	-- Component declaration
	component AndGate
		port(
			x	:	in 	std_logic;
			y	:	in		std_logic;
			f  :	out	std_logic
		);
	end component;
	
	signal x_test		: std_logic := '0';
	signal y_test		: std_logic := '0';
	signal f_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: AndGate
		port map (
			x 		=> x_test,
			y 		=> y_test,
			f		=> f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of AND"	  
		severity note;
		
		x_test 	<= '0';
		y_test 	<= '0';
		wait for 1 ns;
		assert f_test = '0'
		  report "Failure for {a,b} = {0,0}"
		  severity failure;
		  
		x_test 	<= '0';
		y_test 	<= '1';
		wait for 1 ns;
		assert f_test = '0'
		  report "Failure for {a,b} = {0,1}"
		  severity failure;
		
		x_test 	<= '1';
		y_test 	<= '0';
		wait for 1 ns;
		assert f_test = '0'
		  report "Failure for {a,b} = {1,0}"
		  severity failure;
		  
		x_test 	<= '1';
		y_test 	<= '1';
		wait for 1 ns;
		assert f_test = '1'
		  report "Failure for {a,b} = {1,1}"
		  severity failure;
		 
		report "sucessfull,esta monda ya va saliendo"
		severity note;
		wait;
		
	end process;

end architecture;