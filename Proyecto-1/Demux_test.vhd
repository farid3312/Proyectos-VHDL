-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Demux_test is	
end entity;

-- Architecture (test process)
architecture arch_Demux_test of Demux_test is

	-- Component declaration
	component Demux_Nand
		port(
			x	:	in 	std_logic;
			sel	:	in	std_logic;
			f  :  out std_logic;
			g  :  out std_logic
		);
	end component;
	
	-- Signal declaration
	signal x_test	: std_logic := '0';
	signal sel_test : std_logic := '0';
	signal f_test  : std_logic ;
	signal g_test  : std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: Demux_Nand 
		port map (
			x => x_test,
			sel => sel_test,
			f => f_test,
			g => g_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of Demux_Nand"	  
		severity note;
		
		x_test <= '0';
		sel_test <= '0';
		wait for 10 ns;
		assert f_test = '0';
		assert g_test = '0'
		  report "Falla para x = 0,sel=0"
		  severity failure;
		  
		  
		x_test <= '0';
		sel_test <= '1';
		wait for 1 ns;
		assert f_test = '0';
		assert g_test = '0'
		  report "Falla para x = 0,sel=1"
		  severity failure;
		  
		  
		x_test <= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert f_test = '1';
		assert g_test = '0'
		  report "Falla para x = 1,sel=0"
		  severity failure;
		  
		  
		x_test <= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert f_test = '0';
		assert g_test = '1'
		  report "Falla para x = 1,sel=1"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;