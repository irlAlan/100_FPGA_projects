----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 01.09.2025 18:31:03
-- Design Name:
-- Module Name: And_gate_tb - Behavioral
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

entity And_gate_tb is
end And_gate_tb;

architecture Behavioral of And_gate_tb is

component And_gate is
    Port(
        clk : in STD_LOGIC;
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        O : out STD_LOGIC
    );
end component;

    signal clk_sig : STD_LOGIC := '0';
    signal A_sig: STD_LOGIC;
    signal B_sig: STD_LOGIC;
    signal O_Sig: STD_LOGIC;

begin

And_gate_inst: And_gate
 port map(
    clk => clk_sig,
    A => A_sig,
    B => B_sig,
    O => O_sig
);

clk_sig <= not clk_sig after  10 ns;

process begin
    A_sig <= '0'; B_sig <= '0';
    wait for 5 ns;
    A_sig <= '0'; B_sig <= '1';
    wait for 5 ns;
    A_sig <= '1'; B_sig <= '1';
    wait for 5 ns;
end process;


end Behavioral;
