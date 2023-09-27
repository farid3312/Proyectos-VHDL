library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMux4_way_test is
end entity;

	architecture DMux4_way_test_arch of DMux4_way_test is
 
 component DMux4_way
   port(
	 w : in std_logic;
    sel0 : in std_logic;
    sel1 : in std_logic;
    f1 : out std_logic;
    f2 : out std_logic;
    f3 : out std_logic;
	 f4 : out std_logic
	);
end component;
	
	--signal declaration
	 signal w : std_logic;
    signal sel0 : std_logic;
    signal sel1 : std_logic;
    signal f1 : std_logic;
    signal f2 : std_logic;
    signal f3: std_logic;
	 signal f4: std_logic;
begin
--Dut instatiation 
     dut1 :  DMux4_way
        port map(
            w => w,
            sel0 => sel0,
            sel1 => sel1,
            f1 => f1,
            f2 => f2,
            f3 => f3,
				f4 => f4
        );
    --Stimulus generation 
    Stimulus  : process 
	 
    begin
	 	  report "Start of the test of DMux4_way_test"	  
		  severity note;
		
        -- Test case 1
        w <= '0';
        sel0 <= '0';
        sel1 <= '0';
        wait for 10 ns;
        assert f1 = '0'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		   w <= '0';
        sel0 <= '0';
        sel1 <= '1';
        wait for 10 ns;
        assert f2 = '0'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		  w <= '1';
        sel0 <= '0';
        sel1 <= '0';
        wait for 10 ns;
        assert f3 = '0'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		  w <= '0';
        sel0 <= '1';
        sel1 <= '1';
        wait for 10 ns;
        assert f4 = '0'; 
		  report "Test case 1 failed" 
		  severity error;

		  
		report "bien hecho, se logró"
		severity note;
		wait;
		  
 end process;
	
end architecture;
