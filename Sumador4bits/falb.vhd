library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity falb is
	port (ain: in std_logic_vector (3 downto 0);
			bin: in std_logic_vector (3 downto 0); 
			sum: out std_logic_vector (3 downto 0);
			cin: in std_logic;
			cout: out std_logic
	);
end falb;
	
architecture Behavioral of falb is
	component fa4b 
			port (n1,n2,cin: in std_logic;
						 salida, cout: out std_logic );
	end component; 

	signal c1,c2,c3 :std_logic;
begin
   s0: fa4b  port map (ain(0), bin(0), cin, sum(0), c1);
   sl: fa4b  port map (ain(1), bin(1), c1, sum(1), c2);
   s2: fa4b  port map (ain(2), bin(2), c2, sum(2), c3);
   s3: fa4b  port map (ain(3), bin(3), c3, sum(3), cout);
end Behavioral;