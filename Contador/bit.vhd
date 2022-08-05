library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity bit is
	port(clk, rst : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		q : inout std_logic_vector(7 downto 0):= "00000000");
end bit;

architecture Behavioral of bit is

begin
	process(sel, rst, clk)
	begin
		if(clk'event and clk = '1') then
			if(rst = '1') then
				q <="00000000";
			else
				q <= q+1;
			end if;
			if(sel = "00" and q > "00000010") then
				q <="00000000";
			elsif(sel = "01" and q > "00001110") then
				q <="00000000";
			elsif(sel = "10" and q > "00111110") then
				q <="00000000";
			elsif(sel = "11" and q > "11111110") then
				q <="00000000";
			end if;
		end if;
	end process;
end Behavioral;

