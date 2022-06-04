library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_test is
	port
	(
		A,B: in	std_logic_vector (7 downto 0);
		ALU_Sel: in std_logic_vector (2 downto 0);
		NZVC: out std_logic_vector (3 downto 0);
		HEX2,HEX3: out std_logic_vector (7 downto 0)
	);
end ALU_test;

architecture arch_ALU_test of ALU_test is

	component ALU
	port
		(
		A,B : in std_logic_vector (7 downto 0);
		ALU_Sel : in std_logic_vector (2 downto 0);
		NZVC : out std_logic_vector (3 downto 0);
		ALU_Result : out std_logic_vector (7 downto 0)
		);
	end component;
	
	component deco7segV1
	port
		(
		SW : in std_logic_vector(3 downto 0);
		HEX : out std_logic_vector (7 downto 0)
		);
	end component;
	
	signal data_out : std_logic_vector (7 downto 0);
	signal data_out0 : std_logic_vector (3 downto 0) := data_out(3 downto 0);
	signal data_out1 : std_logic_vector (3 downto 0) := data_out(7 downto 4);
	
begin

	N : ALU  port map (A,B,ALU_Sel,NZVC,data_out);
	S0 : deco7segV1 port map (data_out0,HEX2);
	S1 : deco7segV1 port map (data_out1, HEX3);
	
end arch_ALU_test;
