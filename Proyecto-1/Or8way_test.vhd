-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Or8way_test is	
end entity;

-- Architecture (test process)
architecture Or_arch_test of Or8way_test is

	-- Component declaration
	component Or_8
		port(
			x	:	in 	std_logic_vector(3 downto 0);
			y  :  in    std_logic_vector(3 downto 0);
			f	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal x_test	: std_logic_vector(3 downto 0) := "0000";
	signal y_test  : std_logic_vector(3 downto 0) := "0000";
	signal f_test	: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: Or_8
		port map (
			x => x_test,
			y => y_test,
			f => f_test
		);

	-- Stimulus generation
	Stimulus	  : process
	
	begin  
	  report "Start of the test of OR16"	  
		severity note;
		
		x_test <= "0000"; 
		y_test <= "0000";
		wait for 1 ns;
		assert f_test = '0'
		  report "Failure para x = [0000], y=[0000]"
		  severity failure;
		  
		x_test <= "1111"; 
		y_test <= "1111";
		wait for 100 ns;
		assert f_test = '1'
		  report "Failure para x = [1111], y = [1111]"
		  severity failure;
		 
		x_test <= "0100"; 
		y_test <= "0000";
		wait for 1000 ns;
		assert f_test = '1'
		  report "Failure para x = [0100],y = [0000]"
		  severity failure;
		  
		x_test <= "1111";
		y_test <= "0001";
		wait for 10000 ns;
		assert f_test = '1'
		  report "Failure para x = [1111], y = [0001]"
		  severity failure;
		 
		report "bien hecho, se logró"
		severity note;
		wait;
	end process;

end architecture;