library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_way16 is
    port(
	     w : in std_logic_vector(15 downto 0);
        x : in std_logic_vector(15 downto 0);
		  y : in std_logic_vector(15 downto 0);
		  z : in std_logic_vector(15 downto 0); 
        sel : in std_logic_vector(1 downto 0);
        f : out std_logic_vector(15 downto 0)
    );
end Mux4_way16;

architecture Mux4_way16_arch of Mux4_way16 is
begin
    process (sel, x) is
      begin
        case sel is
            when "00" => f <= w(15 downto 0);
            when "01" => f <= x(15 downto 0);
				when "10" => f <= y(15 downto 0);
				when "11" => f <= z(15 downto 0);
            when others => f <= (others => '0');
        end case;
    end process;
end architecture;