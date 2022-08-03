----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:14:21 07/22/2022 
-- Design Name: 
-- Module Name:    ProyectoContador - Behavioral 
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

entity ProyectoContador is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           display : out  STD_LOGIC_VECTOR (6 downto 0));
end ProyectoContador;

architecture Behavioral of ProyectoContador is

component Contador
	port(
		clk: in std_logic;
		rst: in std_logic;
		Q: inout std_logic_vector(3 downto 0));
end component;
	
signal salcompo: std_logic_vector(3 downto 0);

begin

C1: Contador port map(clk => clk, rst => rst, Q => salcompo);

process(salcompo) begin
	case salcompo is
		when "0000" => display <= "0000001";
		when "0001" => display <= "1001111";
		when "0010" => display <= "0010010";
		when "0011" => display <= "0000110";
		when "0100" => display <= "1001100";
		when "0101" => display <= "0100100";
		when "0110" => display <= "0100000";
		when "0111" => display <= "0001110";
		when "1000" => display <= "0000000";
		when "1001" => display <= "0000100";
		when others => display <= "1111111";
	end case;
end process;


end Behavioral;

