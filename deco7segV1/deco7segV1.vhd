library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity deco7segV1 is
	port
	(
			SW : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector (7 downto 0)
	);
end deco7segV1;


architecture behavioral of deco7segV1 is

begin
	with SW select
	--COMPROBADOS EN FPGA
		HEX <=  "11000000" when "0000", --0
				  "11111001" when "0001", --1
				  "10100100" when "0010", --2
				  "10110000" when "0011", --3
				  "10011001" when "0100", --4
				  "10010010" when "0101", --5 
				  "10000010" when "0110", --6
				  "11111000" when "0111", --7
				  "10000000" when "1000", --8
				  "10010000" when "1001", --9
				  "10001000" when "1010", --A
				  "10000011" when "1011", --B
				  "11000110" when "1100", --C
				  "10100001" when "1101", --D
				  "10000110" when "1110", --E
				  "10001110" when others ; --F
				  
end behavioral;
