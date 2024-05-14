----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:42:25 04/30/2024 
-- Design Name: 
-- Module Name:    ula_somado - Behavioral 
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

entity somador_1_bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
           soma : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
end somador_1_bit;

architecture Behavioral of somador_1_bit is 

begin
	soma <= (A XOR B) XOR carry_in;
	carry_out <= ((A AND B) OR (A AND carry_in) OR (B AND carry_in));

end Behavioral;

