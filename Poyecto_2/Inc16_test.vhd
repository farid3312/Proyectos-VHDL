library IEEE;
use IEEE.std_logic_1164.all;

entity inc16_test is
end inc16_test;

architecture Inc16_test_arch of inc16_test is
  component inc16
    port (
      t  : in std_logic_vector(15 downto 0);
      f	: out std_logic_vector(15 downto 0)
    );
  end component;

  signal x_test, y_test : std_logic_vector(15 downto 0);
begin
  Dut1: inc16 port map (t => x_test, f => y_test);

  stimulus: process
  begin
		x_test <= "0000000000000001";
			wait for 10 ns;
			assert y_test = "0000000000000010" 
			report "Error: y_test debe ser 0000000000000010" 
			severity error;

		x_test <= "1111111111111110";
			wait for 10 ns;
			assert y_test = "1111111111111111" 
			report "Error: y_test debe ser 1111111111111111" 
			severity error;

		x_test <= "1111111111111111";
			wait for 10 ns;
			assert y_test = "0000000000000000" 
			report "Error: y_test debe ser 0000000000000000" 
			severity error;
        wait;
    wait;
  end process;
end Inc16_test_arch;