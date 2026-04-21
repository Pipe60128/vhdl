library library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity frecceuncia is
    generic(
        pulse: integer := 25000000
    );
    port(
        clk: in std_logic;
        clk_new: out std_logic
    );
end frecceuncia;

architecture behav of freccuencia is 
    signal clock: std_logic;
    begin
        process(clk)
        begin
            if (rising_edge(clk)) then
                if clock = '1' then
                    clock <= '0';
                else
                    clock <= '1';
                end if;
            end if;
        end process;

        clk_new <= clock;
end behav;