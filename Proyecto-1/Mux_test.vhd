-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Mux_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Mux_test is

	-- Component declaration
	component Mux
		port(
			x	:	in 	std_logic;
			y	:	in		std_logic;
			sel:	in 	std_logic;
			f	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal x_test		: std_logic := '0';
	signal y_test		: std_logic := '0';
	signal sel_test	: std_logic := '0';
	signal f_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: Mux 
		port map (
			x 		=> x_test,
			y 		=> y_test,
			sel 	=> sel_test,
			f 		=> f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Mux"	  
		severity note;
		
		x_test 	<= '0';
		y_test 	<= '0';
		sel_test <= '0';
		wait for 1 ns;
		assert f_test = '0'
		  report "Failure for {a,b,sel} = {0,0,0}"
		  severity failure;
		  
		x_test 	<= '0';
		y_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert f_test = '0'
		  report "Failure for {a,b,sel} = {0,1,0}"
		  severity failure;
		
 	   x_test 	<= '1';
		y_test 	<= '0';
		sel_test <= '0';
		wait for 1 ns;
		assert y_test = '1'
		  report "Failure for {a,b,sel} = {1,0,0}"
		  severity failure;
		  
		x_test 	<= '1';
		y_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert f_test = '1'
		  report "Failure for {a,b,sel} = {1,1,0}"
		  severity failure;
		 
		x_test 	<= '0';
		y_test 	<= '0';
		sel_test <= '1';
		wait for 1 ns;
		assert f_test = '0'
		  report "Failure for {a,b,sel} = {0,0,1}"
		  severity failure;
		  
		x_test 	<= '0';
		y_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert f_test = '1'
		  report "Failure for {a,b,sel} = {0,1,1}"
		  severity failure;
		
		x_test 	<= '1';
		y_test 	<= '0';
		sel_test <= '1';
		wait for 1 ns;
		assert f_test = '0'
		  report "Failure for {a,b,sel} = {1,0,1}"
		  severity failure;
		  
		x_test 	<= '1';
		y_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert f_test = '1'
		  report "Failure for {a,b,sel} = {1,1,1}"
		  severity failure; 
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;