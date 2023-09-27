-- This file is part of the Circuitos Digitales II
-- by Carlos Hernan Tobar Arteaga
-- File name: project_01/NotGate_test.vhdl

-- Not gate:
-- f = not x


-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Not_test is	
end entity;

-- Architecture (test process)
architecture Not_test_arch_test of Not_test is

	-- Component declaration
	component Compuerta_Not
		port(
			x	:	in 	std_logic;
			f	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal x_test	: std_logic := '0';
	signal f_test	: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: Compuerta_Not
		port map (
			x => x_test,
			f => f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of NotGate"	  
		severity note;
		
		x_test <= '0'; 
		wait for 1 ns;
		assert f_test = '1'
		  report "Falla para x = 0"
		  severity failure;
		  
		x_test <= '1'; 
		wait for 10 ns;
		assert f_test = '0'
		  report "Falla para x = 1"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;