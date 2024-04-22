---------------------------------------------------------------
-- Company: ITESM - Campus Qro.entity
-- Author: Alexa Jimena González Lucio
--         Brisa Itzel Reyes Castro
-- Date: 10/04/2024
-- Desing: ROM 16x4
-- Description: Implementation Add Round Key for Decryption / Test bench 3
-- Tool Version: Altera Quartus Lite v21.2 build 842
-- Target Device: DE10-Lite (Terasic.com)
-- Version: 1.0
---------------------------------------------------------------
-- Library and Packages usage definition
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity InvAddRoundKey_tb3 is
end InvAddRoundKey_tb3;

architecture InvAddRoundKey_Arch of InvAddRoundKey_tb3 is
  -- Component declaration
  component InvAddRoundKey
    Port (
      Clk     : in     std_logic;
      Start   : in     std_logic;
      Finish  : out    std_logic;
      DataIn  : in     std_logic_vector (127 downto 0);
      DataOut : out    std_logic_vector (127 downto 0)
    );
  end component;

  -- Constants
  
  constant CLK_PERIOD    : time := 10 ns;  -- clock period (10 ns)
  constant SIM_TIME      : time := 100 us; -- Simulation duration (100 µs)


  -- Signals
  signal Clk       : std_logic := '0';
  signal Start     : std_logic := '0';
  signal Finish    : std_logic;
  signal DataIn    : std_logic_vector(127 downto 0):="11101010" & "00000100" & "01100101" & "10000101" &
																	 "10000011" & "01000101" & "01011101" & "10010110" &
																	 "01011100" & "00110011" & "10011000" & "10110000" & 
																	 "11110000" & "00101101" & "10101101" & "11000101";
		
  signal Key       : std_logic_vector (127 downto 0):="11101010" & "10110101" & "00110001" & "01111111" &
																		 "11010010" & "10001101" & "00101011" & "10001101" &
																		 "01110011" & "10111010" & "11110101" & "00101001" &
																		 "00100001" & "11010010" & "01100000" & "00101111";
  
  signal DataOut   : std_logic_vector(127 downto 0);
  
begin
  -- Instantiate the Unit Under Test (UUT)
  uut: InvAddRoundKey
    port map (
      Clk     => Clk,
      Start   => Start,
      Finish  => Finish,
      DataIn  => DataIn,
      DataOut => DataOut
    );

  -- Clock process
  Clk_Process: process
  begin
    while now < SIM_TIME loop
      Clk <= '0';
      wait for CLK_PERIOD / 2;  --Wait half of the clock period (5 ns).
      Clk <= '1';
      wait for CLK_PERIOD / 2;  --Wait half of the clock period (5 ns).
    end loop;
    wait;  -- wait till the end of simulation
  end process;

  -- Stimulus process
  Stimulus: process
  begin
	--- hold reset state for 100ns, always include the following statement
	wait for 100 ns;
	
 -- input values
	Start <= '1';
   DataIn <="11101010" & "00000100" & "01100101" & "10000101" &
				 "10000011" & "01000101" & "01011101" & "10010110" &
				 "01011100" & "00110011" & "10011000" & "10110000" & 
				 "11110000" & "00101101" & "10101101" & "11000101";
				
  
    wait for 20 ns;

    wait;
  end process;

end InvAddRoundKey_Arch;