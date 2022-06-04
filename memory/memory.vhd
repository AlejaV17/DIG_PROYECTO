library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity memory is

	port
	(
	address : in std_logic_vector (7 downto 0);
	data_in : in std_logic_vector (7 downto 0);
	writes : in std_logic;
	CLOCK_50 : in std_logic;
	reset : in std_logic;
	port_in_00,port_in_01,port_in_02,port_in_03,port_in_04,port_in_05,port_in_06,port_in_07,port_in_08: in std_logic_vector (7 downto 0);
	data_out : out std_logic_vector (7 downto 0);
	port_out_00,port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,port_out_07,port_out_08: out std_logic_vector (7 downto 0)
	
	);
end memory;

architecture arch_memory of memory is
	component rw_96x8_sync
	port
		(
		address : in std_logic_vector (7 downto 0);
		data_in : in std_logic_vector (7 downto 0);
		writes : in std_logic;
		CLOCK_50 : in std_logic;
		data_out : out std_logic_vector (7 downto 0) 
		);
	end component;
	
	component rom_128x8_sync
	port
		(
		address : in std_logic_vector (7 downto 0);
		data_out: out std_logic_vector (7 downto 0);
		CLOCK_50 : in std_logic
		);
	end component;
	component puertos 
	port
		(
		address : in std_logic_vector (7 downto 0);
		data_in : in std_logic_vector (7 downto 0);
		writes : in std_logic;
		CLOCK_50 : in std_logic;
		reset : in std_logic;
		port_out_00,port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,port_out_07,port_out_08: out std_logic_vector (7 downto 0)
		);
	end component;
	
	signal rom_data_out : std_logic_vector (7 downto 0);
	signal rw_data_out : std_logic_vector (7 downto 0);
	
begin
	rom : rom_128x8_sync port map (address,rom_data_out,CLOCK_50);
	ram : rw_96x8_sync port map (address,data_in,writes,CLOCK_50,rw_data_out);
	entradas : puertos port map (address,data_in,writes,CLOCK_50,reset,port_out_00,port_out_01,port_out_02,port_out_03,
	port_out_04,port_out_05,port_out_06,port_out_07,port_out_08);
	

MUX1 : process (address, rom_data_out, rw_data_out,
		port_in_00, port_in_01, port_in_02, port_in_03,
		port_in_04, port_in_05, port_in_06, port_in_07,
		port_in_08)

		begin
		if ( (to_integer(unsigned(address)) >= 0) and
		(to_integer(unsigned(address)) <= 127)) then
		data_out <= rom_data_out;
		elsif ( (to_integer(unsigned(address)) >= 128) and
		(to_integer(unsigned(address)) <= 223)) then
		data_out <= rw_data_out;
		elsif (address = x"F0") then data_out <= port_in_00;
		elsif (address = x"F1") then data_out <= port_in_01;
		elsif (address = x"F2") then data_out <= port_in_02;
		elsif (address = x"F3") then data_out <= port_in_03;
		elsif (address = x"F4") then data_out <= port_in_04;
		elsif (address = x"F5") then data_out <= port_in_05;
		elsif (address = x"F6") then data_out <= port_in_06;
		elsif (address = x"F7") then data_out <= port_in_07;
		elsif (address = x"F8") then data_out <= port_in_08;
		else data_out <= x"00";
		end if;
		end process;	
end arch_memory;
