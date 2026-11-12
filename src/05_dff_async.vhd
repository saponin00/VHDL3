library ieee;
use ieee.std_logic_1164.all;

entity dff_async_vhdl is
    port (d, clk, set, clr : in std_logic; q, nq : out std_logic);
end entity dff_async_vhdl;

architecture rtl of dff_async_vhdl is
    signal q_i : std_logic;
begin
    process(clk, set, clr)
    begin
        if clr = '1' then
            q_i <= '0';
        elsif set = '1' then
            q_i <= '1';
        elsif rising_edge(clk) then
            q_i <= d;
        end if;
    end process;
    q <= q_i;
    nq <= not q_i;
end architecture rtl;
