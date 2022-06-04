library verilog;
use verilog.vl_types.all;
entity ram_test_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(7 downto 0);
        HEX1            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end ram_test_vlg_check_tst;
