----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:12 04/30/2024 
-- Design Name: 
-- Module Name:    somador_4_bits - Behavioral 
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

entity somador_4_bits is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           carry_in : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC);
end somador_4_bits;

architecture Behavioral of somador_4_bits is
	component somador_1_bit port(
	A, B, carry_in : IN STD_LOGIC;
	soma, carry_out : OUT STD_LOGIC);
	END component somador_1_bit;
	
	signal carry_interno : STD_LOGIC_VECTOR (2 downto 0);
begin
	somador_1 : somador_1_bit PORT MAP(A(0), B(0), carry_in,        S(0), carry_interno(0));
	somador_2 : somador_1_bit PORT MAP(A(1), B(1), carry_interno(0),S(1), carry_interno(1));
	somador_3 : somador_1_bit PORT MAP(A(2), B(2), carry_interno(1),S(2), carry_interno(2));
	somador_4 : somador_1_bit PORT MAP(A(3), B(3), carry_interno(2),S(3), carry_out);
end Behavioral;

