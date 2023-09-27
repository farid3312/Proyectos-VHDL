--Prueba demux using compuertas NAND
-- librerias
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--definicion de entidades 
entity Demux_Nand is 
  Port ( x,sel : in  STD_LOGIC;
         f,g   : out STD_LOGIC);
end Demux_Nand;

-- definicion de la arquitectura

architecture Behavioral of Demux_Nand is
begin 
  f <= (not sel) and x;
  g <= sel and x;
end Behavioral;