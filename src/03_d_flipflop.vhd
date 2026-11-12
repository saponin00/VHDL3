library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop_vhdl is
    port (d, clk : in std_logic; q, nq : out std_logic);
end entity d_flipflop_vhdl;

architecture rtl of d_flipflop_vhdl is
    signal q_i : std_logic;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q_i <= d;
        end if;
    end process;
    q <= q_i;
    nq <= not q_i;
end architecture rtl;
