library ieee;
use ieee.std_logic_1164.all;

entity rs_latch_vhdl is
    port (r, s : in std_logic; q, nq : out std_logic);
end entity rs_latch_vhdl;

architecture rtl of rs_latch_vhdl is
begin
    process(r, s)
    begin
        if r = '1' then
            q <= '0';
        elsif s = '1' then
            q <= '1';
        end if;

        if s = '1' then
            nq <= '0';
        elsif r = '1' then
            nq <= '1';
        end if;
    end process;
end architecture rtl;
