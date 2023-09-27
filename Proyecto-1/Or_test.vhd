-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Or_test is	
end entity;

-- Architecture (test process)
architecture Or_arch_test of Or_test is

	-- Component declaration
	component Compuerta_or
		port(
			x	:	in 	std_logic;
			y  :  in    std_logic;
			f	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal x_test	: std_logic := '0';
	signal y_test  : std_logic := '0';
	signal f_test	: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: Compuerta_or
		port map (
			x => x_test,
			y => y_test,
			f => f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of Compuerta_or"	  
		severity note;
		
		x_test <= '0'; 
		y_test <= '0';
		wait for 1 ns;
		assert f_test = '0'
		  report "failurere para x = 0,y = 0"
		  severity failure;
		  
		x_test <= '0';
		y_test <= '1'; 
		wait for 1 ns;
		assert f_test = '1'
		  report "failare para x = 0,y = 1"
		  severity failure;
		  
		x_test <= '1';
		y_test <= '0';
		wait for 1ns;
		assert f_test ='1'
		  report "Falla para x =1,y=0"
		  severity failure;
		
		x_test <= '1';
		y_test <= '1';
		wait for 1 ns;
		assert f_test = '1'
		  report "Falla para x =1, y=1"
		  severity failure;
		  
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;