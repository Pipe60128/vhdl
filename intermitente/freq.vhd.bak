library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity frec is
    generic(
        pulse: integer := 25000000
    );
    port(
        clk: in std_logic;
        clk_new: out std_logic
    );
end frec;

architecture behav of frec is 
    signal counter: integer := 0;
    signal clock: std_logic := '0';
    begin
        process(clk)
    begin
        if rising_edge(clk) then
            if counter = pulse then
                counter <= 0;
                clock <= not clock;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

        clk_new <= clock;
end behav;