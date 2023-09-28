library IEEE;
use IEEE.std_logic_1164.all;

entity ALU_test is
end entity;

architecture ALU_test_arch of ALU_test is
  component ALU
    port (
      a, b : in std_logic_vector(15 downto 0);
      zx, nx, zy, ny, f, no : in std_logic;
      t : out std_logic_vector(15 downto 0);
      zr, ng : out std_logic
    );
  end component;

  signal x_test, y_test, out_test : std_logic_vector(15 downto 0);
  signal zx_test, nx_test, zy_test, ny_test, f_test, no_test, zr_test, ng_test : std_logic;
begin
  dut1: ALU 
  port map 
  (x => x_test,
  y => y_test,
  zx => zx_test,
  nx => nx_test, 
  zy => zy_test,
  ny => ny_test,
  f => f_test, 
  no => no_test,
  t => out_test, zr => zr_test, ng => ng_test);

  stimulus: process
  begin
    x_test <= "0000000000000000";
    y_test <= "0000000000000000";
    zx_test <= '0';
    nx_test <= '0';
    zy_test <= '0';
    ny_test <= '0';
    f_test <= '0';
    no_test <= '0';
    wait for 10 ns;
    
    wait;
  end process;
  
end architecture;
