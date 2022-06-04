library verilog;
use verilog.vl_types.all;
entity memory_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        port_in_00      : in     vl_logic_vector(7 downto 0);
        port_in_01      : in     vl_logic_vector(7 downto 0);
        port_in_02      : in     vl_logic_vector(7 downto 0);
        port_in_03      : in     vl_logic_vector(7 downto 0);
        port_in_04      : in     vl_logic_vector(7 downto 0);
        port_in_05      : in     vl_logic_vector(7 downto 0);
        port_in_06      : in     vl_logic_vector(7 downto 0);
        port_in_07      : in     vl_logic_vector(7 downto 0);
        port_in_08      : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        writes          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end memory_vlg_sample_tst;
