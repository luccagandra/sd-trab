----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:59 04/30/2024 
-- Design Name: 
-- Module Name:    subtrator - Behavioral 
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

entity subtrator is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Dif : out  STD_LOGIC_VECTOR (3 downto 0));
end subtrator;

architecture Behavioral of subtrator is
	component somador_4_bits port(
	A, B :      IN STD_LOGIC_VECTOR (3 downto 0);
	carry_in :  IN STD_LOGIC;
	S :         OUT STD_LOGIC_VECTOR (3 downto 0);
	carry_out : OUT STD_LOGIC);
	END component somador_4_bits;

	component complemento_2 port(
	A :         IN STD_LOGIC_VECTOR (3 downto 0);
	S :         OUT STD_LOGIC_VECTOR (3 downto 0);
	carry_out : OUT STD_LOGIC);
	END component somador_4_bits;
	
	signal S : STD_LOGIC_VECTOR (4 downto 0);
begin
	complemento_subtrator : complemento_2 PORT MAP(
	B(0), B(1), B(2), B(3),
	S(0), S(1), S(2), S(3),
	S(4))
	
	somador_subtrator : somador_4_bits PORT MAP(
	A(0), A(1), A(2), A(3),
	S(0), S(1), S(2), S(3),
	S(4),
	Dif(0), Dif(1), Dif(2), Dif(3))
end Behavioral;

