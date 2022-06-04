library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prueba_rom is

	port
	(
		SW: in	std_logic_vector (7 downto 0);
		CLOCK_50: in std_logic;
		HEX0,HEX1 : out std_logic_vector (7 downto 0)
	);
end prueba_rom;


architecture arch_rom_test of prueba_rom is
	
	component rom_128x8_sync
	port
		(address : in std_logic_vector (7 downto 0);
		data_out: out std_logic_vector (7 downto 0);
		CLOCK_50 : in std_logic);
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

	rom : rom_128x8_sync port map (SW,data_out,CLOCK_50);
	S0 : deco7segV1 port map (data_out1,HEX0);
	S1 : deco7segV1 port map (data_out2, HEX1);
	
end arch_rom_test;
