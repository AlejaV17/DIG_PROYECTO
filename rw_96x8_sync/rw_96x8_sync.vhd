library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rw_96x8_sync is

	port
	(
		address : in std_logic_vector (7 downto 0);
		data_in : in std_logic_vector (7 downto 0);
		writes : in std_logic;
		CLOCK_50 : in std_logic;
		data_out : out std_logic_vector (7 downto 0) 
	);
end rw_96x8_sync;

architecture arch_rw_96x8_sync of rw_96x8_sync is

	type rw_type is array (128 to 223) of std_logic_vector(7 downto 0);
	signal RW : rw_type;
	signal EN : std_logic;

begin

	enable : process (address)
			
		begin
			if (to_integer(unsigned(address)) >= 128) and
				(to_integer(unsigned(address)) <= 223) then
				EN <= '1';
			else
			EN <= '0';
			end if;
	end process;
	
	memory : process (CLOCK_50)
		begin
			if (CLOCK_50'event and CLOCK_50 = '1') then
				if (EN = '1' and writes = '1') then
				RW(to_integer(unsigned(address))) <= data_in;
				elsif (EN = '1' and writes = '0') then
				data_out <= RW(to_integer(unsigned(address)));
				end if;
				if(EN = '0') then
				data_out <= "00000000";
				end if;
			end if;
		end process;

end arch_rw_96x8_sync;
