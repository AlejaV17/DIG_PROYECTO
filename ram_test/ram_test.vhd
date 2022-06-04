library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ram_test is

	port
	(
		address : in std_logic_vector (7 downto 0);
		data_in : in std_logic_vector (7 downto 0);
		writes : in std_logic;
		CLOCK_50 : in std_logic;
		HEX0,HEX1 : out std_logic_vector (7 downto 0) 
	);
end ram_test;

architecture arch_ram_test of ram_test is

	component rw_96x8_sync
	port
		(address : in std_logic_vector (7 downto 0);
		data_in : in std_logic_vector (7 downto 0);
		writes : in std_logic;
		CLOCK_50 : in std_logic;
		data_out : out std_logic_vector (7 downto 0) );
	end component;
	
	component deco7segV1 
	port
		(SW : in std_logic_vector(3 downto 0);
		HEX : out std_logic_vector (7 downto 0));
	end component;
	
	signal data_out: std_logic_vector(7 downto 0);
	signal data_out1: std_logic_vector(3 downto 0) := data_out(3 downto 0);
	signal data_out2: std_logic_vector(3 downto 0) := data_out(7 downto 4);
	
begin
	ram : rw_96x8_sync port map (address,data_in,writes,CLOCK_50,data_out);
	S0 : deco7segV1 port map (data_out1,HEX0);
	S1 : deco7segV1 port map (data_out2, HEX1);
	

end arch_ram_test;
