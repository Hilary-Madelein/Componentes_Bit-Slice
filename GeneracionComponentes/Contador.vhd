----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:51 07/22/2022 
-- Design Name: 
-- Module Name:    Contador - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0):="0000");
end Contador;

architecture Behavioral of Contador is

begin

	process (clk, rst) begin
		if (clk'event and clk = '1') then 
			if(rst = '1' or Q = "1001") then
				Q <= "0000";
			else 
				Q <= Q+1;
			end if;
		end if;
	end process;

end Behavioral;

