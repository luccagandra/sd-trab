----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:10 04/30/2024 
-- Design Name: 
-- Module Name:    complemento_2 - Behavioral 
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

entity complemento_2 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC);
end complemento_2;

architecture Behavioral of complemento_2 is
	component somador_4_bits port(
	A, B :      IN STD_LOGIC_VECTOR (3 downto 0);
	carry_in :  IN STD_LOGIC;
	S :         OUT STD_LOGIC_VECTOR (3 downto 0);
	carry_out : OUT STD_LOGIC);
	END component somador_4_bits;
	
begin 
	somador_para_complemento : somador_4_bits PORT MAP(
	A(0), A(1), A(2), A(3),
	'1', '0', '0', '0',
	'0', 
	S(0), S(1), S(2), S(3),
	carry_out);

end Behavioral;

