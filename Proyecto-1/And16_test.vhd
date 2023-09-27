-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity And16_test is	
end entity;

-- Architecture (test process)
architecture And16_arch_test of And16_test is

	-- Component declaration
	component And16
		port(
			x	:	in 	std_logic_vector(15 downto 0);
			y	:	in		std_logic_vector(15 downto 0);
			f  :	out	std_logic_vector(15 downto 0)
		);
	end component;
	
	signal x_test		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal y_test		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal f_test		: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: AND16
		port map (
			x 	=> x_test,
			y 	=> y_test,
			f	=> f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of AND16"	  
		severity note;
		
		x_test 	<= "0000000000000000";
		y_test 	<= "1111111111111111";
		wait for 1 ns;
		assert f_test = "0000000000000000"
		  report "Failure for x=[0000000000000000],y=[1111111111111111]"
		  severity failure;
		  
		x_test 	<= "1111111111111111";
		y_test 	<= "1010101010101010";
		wait for 1 ns;
		assert f_test = "1010101010101010"
		  report "Failure for x=[1010101010101010], y=[1111111111111111]"
		  severity failure;
		
		x_test 	<= "1111111111111110";
		y_test 	<= "0000000000000000";
		wait for 1 ns;
		assert f_test = "0000000000000000"
		  report "Failure for x=1111111111111110,y=0000000000000000"
		  severity failure;
		  
		x_test 	<= "0101010101010101";
		y_test 	<= "0000000000001010";
		wait for 1 ns;
		assert f_test = "0000000000000000"
		  report "Failure for x=1111111111111110,y=0000000000001010"
		  severity failure;
		 
		report "sucessfull rebien man, un sapito reflexionando en la cama, diciendo man :v"
		severity note;
		wait;
		
	end process;

end architecture;