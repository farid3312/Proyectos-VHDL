library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux8_way16_test is
end entity;

architecture Mux8_way16_test_arch of Mux8_way16_test is
 
 component Mux8_way16
   port(
	 s : in std_logic_vector(15 downto 0);
    t : in std_logic_vector(15 downto 0);
    u : in std_logic_vector(15 downto 0);
    v : in std_logic_vector(15 downto 0);
	 w : in std_logic_vector(15 downto 0);
    x : in std_logic_vector(15 downto 0);
    y : in std_logic_vector(15 downto 0);
    z : in std_logic_vector(15 downto 0);
    sel : in std_logic_vector(2 downto 0);
    f : out std_logic_vector(15 downto 0)
	);
end component;
	
	--signal declaration
	 signal s : std_logic_vector(15 downto 0):= "0000000000000000";
    signal t : std_logic_vector(15 downto 0):= "0000000000000000";
    signal u : std_logic_vector(15 downto 0):= "0000000000000000";
    signal v : std_logic_vector(15 downto 0):= "0000000000000000";
	 signal w : std_logic_vector(15 downto 0):= "0000000000000000";
    signal x : std_logic_vector(15 downto 0):= "0000000000000000";
    signal y : std_logic_vector(15 downto 0):= "0000000000000000";
    signal z : std_logic_vector(15 downto 0):= "0000000000000000";
    signal sel : std_logic_vector(2 downto 0);
    signal f : std_logic_vector(15 downto 0);
begin
--Dut instatiation 
     dut1 :  Mux8_way16
        port map(
		      s => s,
				t => t,
				u => u,
				v => v,
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
		  s <= "1001000111010001";
		  t <= "0000000001111111";
		  u <= "1010111000110100";
		  v <= "0001111000110101";
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0000111000011100";
        z <= "1010101010101010";
        sel<= "000";
        wait for 10 ns;
        assert f = "1001000111010001" 
		  report "Test case 1 failed" 
		  severity error;

        -- Test case 2
		  s <= "1111001110000111";
		  t <= "0011100011001101";
		  u <= "1111111100000011";
		  v <= "0000000111111000";
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
        sel <= "001";
        wait for 10 ns;
        assert f = "0011100011001101" 
		  report "Test case 2 failed" 
		  severity error;

        -- Test case 3
		  s <= "1001100011100110";
		  t <= "1111000111100101";
		  u <= "1110000111000011";
		  v <= "0011100011100110";
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
        sel <= "110";
        wait for 10 ns;
        assert f = "0101010101010101" 
		  report "Test case 3 failed" 
		  severity error;

        -- Test case 4
		  s <= "1100110101001101";
		  t <= "1111000101010101";
		  u <= "0001110101010100";
		  v <= "0001110011011111";
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
        sel <= "111";
        wait for 10 ns;
        assert f = "1010101010101010" 
		  report "Test case 4 failed" 
		  severity error;

        -- Test case 5
		  s <= "1100110001010101";
		  t <= "1110001010111010";
		  u <= "0000111010101110";
		  v <= "0101010101010101";
        w <= "0000000000000000";
        x <= "1111111111111111";
        y <= "0101010101010101";
        z <= "1010101010101010";
        sel <= "100";
        wait for 10 ns;
        assert f = "0000000000000000" 
		  report "Test case 5 failed" 
		  severity error;

        -- Test case 6
		  s <= "0101010101010111";
		  t <= "1111111111111111";
		  u <= "0000000000000000";
		  v <= "0001010100010001";
        w <= "0000000000000001";
        x <= "1111111111111110";
        y <= "0101010101010101";
        z <= "1010101010101010";
		  sel <="011";
		  wait for 10 ns;
		  assert f = "0001010100010001" 
		  report "Test case 6 failed" 
		  severity error;
		  
		report "bien hecho, se logró"
		severity note;
		wait;
		  
 end process;
	
end architecture;