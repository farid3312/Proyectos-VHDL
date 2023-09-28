--Semisumador 
-- File Name: HalfAdder.vhdl

--lIBRERÍAS Y PAQUETES
library ieee;
use ieee.std_logic_1164.all;

--ENTIDAD
entity halfAdder is 
	port(
	x,y: in std_logic;
	sum, carry: out std_logic
	
	);
end entity;


--ARQUITECTURA 

architecture arch of halfAdder is
begin
	 sum <= x xor y;
	 carry <= x and y;
	 	 
end architecture;

