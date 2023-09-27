library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_way16_test is
end entity;

architecture Mux4_way16_test_arch of Mux4_way16_test is
 
 component Mux4_way16
   port(
	 w : in std_logic_vector(15 downto 0);
    x : in std_logic_vector(15 downto 0);
    y : in std_logic_vector(15 downto 0);
    z : in std_logic_vector(15 downto 0);
    sel : in std_logic_vector(1 downto 0);
    f : out std_logic_vector(15 downto 0)
	);
end component;
	
	--signal declaration
	 signal w : std_logic_vector(15 downto 0):= "0000000000000000";
    signal x : std_logic_vector(15 downto 0):= "0000000000000000";
    signal y : std_logic_vector(15 downto 0):= "0000000000000000";
    signal z : std_logic_vector(15 downto 0):= "0000000000000000";
    signal sel : std_logic_vector(1 downto 0);
    signal f : std_logic_vector(15 downto 0);
begin
--Dut instatiation 
     dut1 :  Mux4_way16
        port map(
            w => w,
            x => x,
            y => y,
            z => z,
            sel => sel,
            f => f
        );
    --Stimulus generation 
    Stimulus  : process 
	 
    begin
	 	  report "Start of the test of Mux4_waty16"	  
		  severity note;
		
        -- Test case 1
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0000111000011100";
        z <= "1010101010101010";
        sel<= "00";
        wait for 10 ns;
        assert f = "0000000000000000" 
		  report "Test case 1 failed" 
		  severity error;

        -- Test case 2
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
        sel <= "01";
        wait for 10 ns;
        assert f = "1111111111111111" 
		  report "Test case 2 failed" 
		  severity error;

        -- Test case 3
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
        sel <= "10";
        wait for 10 ns;
        assert f = "0101010101010101" 
		  report "Test case 3 failed" 
		  severity error;

        -- Test case 4
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
        sel <= "11";
        wait for 10 ns;
        assert f = "1010101010101010" 
		  report "Test case 4 failed" 
		  severity error;

        -- Test case 5
        w <=  "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
        sel <= "00";
        wait for 10 ns;
        assert f = "0000000000000000" 
		  report "Test case 5 failed" 
		  severity error;

        -- Test case 6
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
		  sel <="10";
		  wait for 10 ns;
		  assert f = "0101010101010101" 
		  report "Test case 6 failed" 
		  severity error;
		  
		report "bien hecho, se logró"
		severity note;
		wait;
		  
 end process;
	
end architecture;

