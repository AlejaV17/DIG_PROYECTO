library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity memory_test is

	port
	(
	address : in std_logic_vector (7 downto 0); --SW
	data_in : in std_logic_vector (7 downto 0); --
	writes : in std_logic;
	CLOCK_50 : in std_logic;
	reset : in std_logic;
	HEX0,HEX1 : out std_logic_vector (7 downto 0);
	port_in_00,port_in_01,port_in_02,port_in_03,port_in_04,port_in_05,port_in_06,port_in_07,port_in_08: in std_logic_vector (7 downto 0);
	port_out_00,port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,port_out_07,port_out_08: out std_logic_vector (7 downto 0)
	);
end memory_test;

architecture arch_memory_test of memory_test is

	component deco7segV1
	port(
		SW : in std_logic_vector(3 downto 0);
		HEX : out std_logic_vector (7 downto 0)
	);
	end component;
	
	component memory
	port(
	address : in std_logic_vector (7 downto 0);
	data_in : in std_logic_vector (7 downto 0);
	writes : in std_logic;
	CLOCK_50 : in std_logic;
	reset : in std_logic;
	port_in_00,port_in_01,port_in_02,port_in_03,port_in_04,port_in_05,port_in_06,port_in_07,port_in_08: in std_logic_vector (7 downto 0);
	data_out : out std_logic_vector (7 downto 0);
	port_out_00,port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,port_out_07,port_out_08: out std_logic_vector (7 downto 0)
	);
	end component;
		
	signal data_out: std_logic_vector(7 downto 0);
	signal data_out1: std_logic_vector(3 downto 0) := data_out(3 downto 0);
	signal data_out2: std_logic_vector(3 downto 0) := data_out(7 downto 4);

begin
	memoria : memory port map (address,data_in,writes,CLOCK_50,reset,port_in_00,port_in_01,port_in_02,port_in_03,port_in_04,
	port_in_05,port_in_06,port_in_07,port_in_08,data_out,port_out_00,port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,
	port_out_07,port_out_08);
	S0 : deco7segV1 port map (data_out1,HEX0);
	S1 : deco7segV1 port map (data_out2, HEX1);
	

end arch_memory_test;
