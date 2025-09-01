----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 01.09.2025 18:20:54
-- Design Name:
-- Module Name: And_gate - rtl
-- Project Name:
-- Target Devices:
-- Tool Versions:
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity And_gate is
  Port (
    clk : in STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    O : out STD_LOGIC
  );
end And_gate;

architecture rtl of And_gate is
begin

O <= A and B;

end rtl;
