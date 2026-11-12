library ieee;
use ieee.std_logic_1164.all;

entity d_latch_vhdl is
    port (d, en : in std_logic; q, nq : out std_logic);
end entity d_latch_vhdl;

architecture rtl of d_latch_vhdl is
    signal q_i : std_logic;
begin
    process(d, en)
    begin
        if en = '1' then
            q_i <= d;
        end if;
    end process;
    q <= q_i;
    nq <= not q_i;
end architecture rtl;
