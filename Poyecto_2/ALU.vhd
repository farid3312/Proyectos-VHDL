library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
  port (
  -- a,b,p porque estan siendo usadas en otras compuertas, en lugar de x,y,f
    a : in std_logic_vector (15 downto 0);
	 b : in std_logic_vector(15 downto 0);
    zx : in std_logic;
	 nx : in std_logic;
	 zy : in std_logic;
	 ny : in std_logic;
	 p  : in std_logic;
	 no : in std_logic;
	 -- t como out del ejemplo
    t : out std_logic_vector(15 downto 0);
    zr : out std_logic; 
	 ng : out std_logic
	 
  );
end ALU;

architecture arch_ALU of ALU is
  signal x1, x2, y1, y2, t1, t2 : std_logic_vector(15 downto 0);
  signal zero, neg : std_logic_vector(15 downto 0);
begin
  -- if (zx == 1) set x = 0
  x1 <= (others => '0') when zx = '1' else x;
  
  -- if (nx == 1) set x = !x
  x2 <= not x1 when nx = '1' else x1;
  
  -- if (zy == 1) set y = 0
  y1 <= (others => '0') when zy = '1' else b;
  
  -- if (ny == 1) set y = !y
  y2 <= not y1 when ny = '1' else y1;
  
  -- if (f == 1)  set out = x + y
  -- if (f == 0)  set out = x & y
  t1 <= (x2 or y2) when f = '1' else x2 and y2;
  
  -- if (no == 1) set out = !out
  t2 <= not t1 when no = '1' else t1;
  
  -- output
  t <= t2;
  
  -- if (out == 0) set zr = 1
  zr <= '1' when t2 = zero else '0';
  
  -- if (out < 0) set ng = 1
  ng <= t2(15);
  
  	component Add16 is
		Port(
			x	:	in std_logic;
			y	:	in	std_logic;
			sum : out std_logic;
			carry : out std_logic
		);
	end component;
	
	begin
	
	Add1 : Add16
		Port map(
			a => x,
			b => comp2x,
			t=zeroX
		);
     
  
end architecture;