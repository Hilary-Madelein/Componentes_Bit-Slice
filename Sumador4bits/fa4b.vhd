library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity fa4b is
	port (
		n1 : in std_logic;
		n2 : in std_logic;
		cin : in std_logic;
		salida: out std_logic;
		cout: out std_logic
	);
end fa4b;

architecture Behavioral of fa4b is
begin
	salida <= n1 xor n2 xor cin;
	cout <= (n1 and n2) or (n1 and cin) or (n2 and cin);
end Behavioral;