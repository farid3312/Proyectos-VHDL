library ieee;
use ieee.std_logic_1164.all;

entity Add16_test is
end entity;

architecture Add16_test_arch of Add16_test is
	component Add16 is
		Port(
			x 	: in std_logic_vector(15 downto 0);
			y 	: in std_logic_vector(15 downto 0);
			sum : out std_logic_vector(15 downto 0);
			carry : out std_logic
		);
	end component;

	signal x_test, y_test, sum_test : std_logic_vector(15 downto 0);
	signal carry_test : std_logic;

begin
	
	Dut1: Add16
		port map(
			x => x_test,
			y => y_test,
			sum => sum_test,
			carry => carry_test
		);

	process
	begin
	
	
		-- prueba1
		x_test <= "0000000000000000";
		y_test <= "0000000000000000";
		wait for 10 ns;
		assert (sum_test = "0000000000000000") 
			report "Test case 1 failed" severity error;
			assert (carry_test = '0') report "Test 1 failed" severity error;

		-- prueba2
		x_test <= "1111111111111111";
		y_test <= "1111111111111111";
		wait for 10 ns;
		assert (sum_test = "111111111111110") 
			report "Test 2 failed" severity error;
			assert (carry_test = '1') report "Test 2 failed" severity error;
			
		 -- prueba3
        x_test <= "0111100110011001";
        y_test <= "1000011001100110";
        wait for 10 ns;
        assert (sum_test = "10000001100001111") 
			report "Test 3 failed" severity error;
			assert (carry_test = '0') report "Test 3 failed" severity error;

        -- prueba4
        x_test <= "0010010010010010";
        y_test <= "0100100100100100";
        wait for 10 ns;
        assert (sum_test = "0110110110110110") 
			report "Test 6 failed" severity error;
			assert (carry_test = '0') report "Test 6 failed" severity error;
			
		report "Test successful, bien se logró"
		severity note;
		wait;
		

		wait;
	end process;
end architecture;