--Prueba OR using compuertas NAND
-- librerias
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--definicion de entidades 

entity Compuerta_or is
    Port ( x, y : in  std_logic;
           f    : out std_logic);
end Compuerta_or;

-- definicion de la arquitectura

architecture Behavioral of compuerta_or is
    signal NAND_x  : std_logic;
    signal NAND_y  : std_logic;
begin
    NAND_x <= x nand x;
    NAND_y <= y nand y;
	 f <= NAND_x nand NAND_y;
end Behavioral;

