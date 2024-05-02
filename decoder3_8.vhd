----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:01:14 05/01/2024 
-- Design Name: 
-- Module Name:    decoder3_8 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder3_8 is
	PORT( A,B,C : IN  STD_LOGIC;
--			G1,G2n,G3n 	  : IN  STD_LOGIC;
			Y		  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			);
end decoder3_8;

architecture Behavioral of decoder3_8 is
signal in_s	  :STD_LOGIC_VECTOR(2 DOWNTO 0);
signal y_s    :STD_LOGIC_VECTOR(7 DOWNTO 0);

begin
in_s <= C & B & A;

with in_s select
y_s<= "11111110" when "000", 
		"11111101" when "001",
		"11111011" when "010",
		"11110111" when "011",
		"11101111" when "100",
		"11011111" when "101",
		"10111111" when "110",
		"01111111" when "111",
		"11111111" when others;
		y <= y_s;
end Behavioral;

