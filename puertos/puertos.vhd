library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity puertos is

	port
	(
	address : in std_logic_vector (7 downto 0);
	data_in : in std_logic_vector (7 downto 0);
	writes : in std_logic;
	CLOCK_50 : in std_logic;
	reset : in std_logic;
	port_out_00,port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,port_out_07,port_out_08: out std_logic_vector (7 downto 0)
	);
end puertos;

architecture arch_puertos of puertos is

	
begin
		U1 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_00 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E0" and writes = '1') then
		port_out_00  <= data_in;
		end if;
		end if;
		end process;
		
	U2 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_01 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E1" and writes = '1') then
		port_out_01 <= data_in;
		end if;
		end if;
		end process;
		
	U3 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_02 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E2" and writes = '1') then
		port_out_02 <= data_in;
		end if;
		end if;
		end process;
			
	U4 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_03 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E3" and writes = '1') then
		port_out_03 <= data_in;
		end if;
		end if;
		end process;
			
	U7 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_04 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E4" and writes = '1') then
		port_out_04 <= data_in;
		end if;
		end if;
		end process;
			
	U8 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_05 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E5" and writes = '1') then
		port_out_05 <= data_in;
		end if;
		end if;
		end process;
			
	U9 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_06 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E6" and writes = '1') then
		port_out_06 <= data_in;
		end if;
		end if;
		end process;
			
	U10 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_07 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E7" and writes = '1') then
		port_out_07 <= data_in;
		end if;
		end if;
		end process;
	
	U11 : process (CLOCK_50, reset)
	begin
		if (reset = '0') then
		port_out_08 <= x"00";
		elsif (CLOCK_50'event and CLOCK_50 = '1') then
		if (address = x"E8" and writes = '1') then
		port_out_08 <= data_in;
		end if;
		end if;
		end process;


end arch_puertos;

