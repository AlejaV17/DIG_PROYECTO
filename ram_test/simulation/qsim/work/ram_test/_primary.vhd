library verilog;
use verilog.vl_types.all;
entity ram_test is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        writes          : in     vl_logic;
        CLOCK_50        : in     vl_logic;
        HEX0            : out    vl_logic_vector(7 downto 0);
        HEX1            : out    vl_logic_vector(7 downto 0)
    );
end ram_test;
