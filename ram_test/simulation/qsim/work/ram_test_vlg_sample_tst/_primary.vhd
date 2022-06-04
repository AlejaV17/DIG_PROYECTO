library verilog;
use verilog.vl_types.all;
entity ram_test_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        CLOCK_50        : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        writes          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ram_test_vlg_sample_tst;
