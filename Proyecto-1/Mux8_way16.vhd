library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux8_way16 is
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
end Mux8_way16;

architecture Mux8_way16_arch of Mux8_way16 is
begin
    process (sel, x) is
      begin
        case sel is
		      when "000" => f <= s(15 downto 0);
            when "001" => f <= t(15 downto 0);
				when "010" => f <= u(15 downto 0);
				when "011" => f <= v(15 downto 0);
            when "100" => f <= w(15 downto 0);
            when "101" => f <= x(15 downto 0);
				when "110" => f <= y(15 downto 0);
				when "111" => f <= z(15 downto 0);
            when others => f <= (others => '0');
        end case;
    end process;
end architecture;