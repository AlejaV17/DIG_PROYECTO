library verilog;
use verilog.vl_types.all;
entity memory_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(7 downto 0);
        port_out_00     : in     vl_logic_vector(7 downto 0);
        port_out_01     : in     vl_logic_vector(7 downto 0);
        port_out_02     : in     vl_logic_vector(7 downto 0);
        port_out_03     : in     vl_logic_vector(7 downto 0);
        port_out_04     : in     vl_logic_vector(7 downto 0);
        port_out_05     : in     vl_logic_vector(7 downto 0);
        port_out_06     : in     vl_logic_vector(7 downto 0);
        port_out_07     : in     vl_logic_vector(7 downto 0);
        port_out_08     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end memory_vlg_check_tst;
