--Prueba XOR using compuertas NAND
-- librerias
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--definicion de entidades 

entity Compuerta_Xor is
    Port ( x, y : in  STD_LOGIC;
           f    : out STD_LOGIC);
end Compuerta_Xor;

-- definicion de la arquitectura

architecture Behavioral of compuerta_Xor is
    signal n0 : STD_LOGIC;
	 signal n1 : STD_LOGIC;
	 
begin
   n0 <= x and (y nand y);
	n1 <= (x nand x) and y;
	f <= n0 or n1;
end Behavioral;
