--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:37:03 07/28/2022
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Desktop/Xiling/EjerciciosTFU2/EjerciciosSlice/TB_falb.vhd
-- Project Name:  EjerciciosSlice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: falb
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_falb IS
END TB_falb;
 
ARCHITECTURE behavior OF TB_falb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT falb
    PORT(
         ain : IN  std_logic_vector(3 downto 0);
         bin : IN  std_logic_vector(3 downto 0);
         sum : OUT  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ain : std_logic_vector(3 downto 0) := (others => '0');
   signal bin : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: falb PORT MAP (
          ain => ain,
          bin => bin,
          sum => sum,
          cin => cin,
          cout => cout
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	 
		ain <= "0101";
		bin <= "0111";
		wait for 100 ns;	 
		ain <= "0111";
		bin <= "0110";
		wait for 100 ns;	 
		ain <= "0101";
		bin <= "1001";
      wait;
   end process;

END;
