LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_bit IS
END TB_bit;
 
ARCHITECTURE behavior OF TB_bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         sel : IN  std_logic_vector(1 downto 0);
         q : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

	--BiDirs
   signal q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit PORT MAP (
          clk => clk,
          rst => rst,
          sel => sel,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		rst <= '0';
		--wait for clk_period*10;
			--sel <= "01";
		--wait for clk_period*10;
			--sel <= "10";
		wait for clk_period*10;
			--rst <= '1';
			sel <= "11";
      wait;
   end process;
END;
