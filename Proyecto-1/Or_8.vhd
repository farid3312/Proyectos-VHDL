library ieee;
use ieee.std_logic_1164.all;

entity Or_8 is
	Port(
			x 	: in std_logic_vector(3 downto 0);
		   y 	: in std_logic_vector(3 downto 0);
			f  : out std_logic
	);
end entity;
architecture Or_8_arch of Or_8 is
  signal s1 : std_logic := '0';
  signal s2 : std_logic := '0';
  signal s3 : std_logic := '0';
  signal s4 : std_logic := '0';
  signal s5 : std_logic := '0';
  signal s6 : std_logic := '0';

begin 
 s1 <= (not x(0)) nand (not (y(0)));
 s2 <= (not x(1)) nand (not (y(1)));
 s3 <= (not x(2)) nand (not (y(2)));
 s4 <= (not x(3)) nand (not (y(3)));
 s5 <= ((not s1) nand (not s2));
 s6 <= ((not s3) nand(not s4));
 f <=((not s5) nand (not s6));
end Architecture;
