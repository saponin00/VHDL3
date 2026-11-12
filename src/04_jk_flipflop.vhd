library ieee;
use ieee.std_logic_1164.all;

entity jk_flipflop_vhdl is
    port (j, k, clk, clr_n : in std_logic; q, nq : out std_logic);
end entity jk_flipflop_vhdl;

architecture rtl of jk_flipflop_vhdl is
    signal q_i : std_logic;
begin
    process(clk, clr_n)
    begin
        if clr_n = '0' then
            q_i <= '0';
        elsif rising_edge(clk) then
            if j = '0' and k = '1' then
                q_i <= '0';
            elsif j = '1' and k = '0' then
                q_i <= '1';
            elsif j = '1' and k = '1' then
                q_i <= not q_i;
            end if;
        end if;
    end process;
    q <= q_i;
    nq <= not q_i;
end architecture rtl;
