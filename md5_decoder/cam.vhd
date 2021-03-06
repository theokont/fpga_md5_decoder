library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all; -- include package stdio.vhd
use ieee.std_logic_textio.all;
use ieee.std_logic_arith.all;


entity cam is
port 
(		clk : in std_logic;
		rst : in std_logic;
		en : in std_logic;
		user_hash1 : in std_logic_vector(127 downto 0);
		user_hash2 : in std_logic_vector(127 downto 0);
		user_hash3 : in std_logic_vector(127 downto 0);
		user_hash4 : in std_logic_vector(127 downto 0);
		toggle1 : in std_logic;
		toggle2 : in std_logic;
		toggle3 : in std_logic;
		toggle4 : in std_logic;
		found1 : out std_logic;
		found2 : out std_logic;
		found3 : out std_logic;
		found4 : out std_logic;
		valid : out std_logic;
		address : out std_logic_vector(6 downto 0)
);
end cam;

architecture bhv of cam is
type memory_array is array(98 downto 0) of std_logic_vector(127 downto 0);

signal cam : memory_array;
signal temp_found1 : std_logic := '0';
signal temp_found2 : std_logic := '0';
signal temp_found3 : std_logic := '0';
signal temp_found4 : std_logic := '0';
signal temp_address : std_logic_vector(6 downto 0) := "1111111";
signal temp_address1 : std_logic_vector(6 downto 0) := "1111111";
signal temp_address2 : std_logic_vector(6 downto 0) := "1111111";
signal temp_address3 : std_logic_vector(6 downto 0) := "1111111";
signal temp_address4 : std_logic_vector(6 downto 0) := "1111111";
begin

cam(0) <= "11011111111101111010011101001110111000001001011001100101001001000000100101010000101000100110100100100110101001101111011110010110";
cam(1) <= "11010110111110010101011011000000001101001000100110001011001010110100001011110110110110000011101110111101010000011100100110001011";
cam(2) <= "11111111000000011110001000111000111000011010100111101111101110100001011111011000100001101001111001100001010001000100100011110110";
cam(3) <= "01000100110010110100101101111101101010000010101111000010100101111100010111001000110100110110011101100110001000111000001000110011";
cam(4) <= "01011011111110101110010111000110011001011100010001110000000111111111000001000111001000101101010010111000101010110010110110000010";
cam(5) <= "11110001110010110111111100000011101111101101100001110011100111101011101000000110010110101101010011111011011001001011111110100100";
cam(6) <= "00010011011111010101101000111101011101010000111011111110010001111100001010100010011111001011110000010111110110010100111011000100";
cam(7) <= "01011101000011111100011000011001111111111010000001000100000110111100001011111100001001111100001101001110011010111000000100001100";
cam(8) <= "01010000111000101111010000001001000000000110110011000000111110001101100000001111110110011001010011000111110110110111111011111100";
cam(9) <= "11000101100111101000111010001011111010001110101110010010101101011100110110011110010001110111001110100111010101001100100000110110";
cam(10) <= "11001111010010000000010110110000000100000001010000110110000011111000011010101010111000100011010000111010000011101100111010101011";
cam(11) <= "11011111010001010101101000101100001000111011000110111100101000110111001111111000010110010001001011000010110010011111100100001111";
cam(12) <= "00101101000001101110010111100001100101111110000101111001001000111000011101100110010010011000010111010010100011100100000111011011";
cam(13) <= "10001010110111000001101001110101001010001100111011100011110001100010100001110011111001111010110011111010000000110000100000000011";
cam(14) <= "11101010101101101010101100011011001011100010100010010011110101111100111000101101100010101011001000100000101010011110111110100010";
cam(15) <= "11111110000011101110101010001110101101111100001101110010011100110101010001111010101110101011001011101101010101010100101101110010";
cam(16) <= "11100101101101111010010110010111101001001100111000010101011101010001111010100011111000010100101010111001010001100001011011010110";
cam(17) <= "00100100101110110100111000100000100010000110110010000101100010000001001000111110000010101100101001101101100000000100110010111011";
cam(18) <= "10111001111110111011010000100100101110011110111011010010001001100101010011100000100111110000100110011100001111001111110001110011";
cam(19) <= "11111101001001101111001100110011100000011110101110001111111000001011010101011011111110000110001101110110001000110111100010101100";



found1 <= temp_found1;
found2 <= temp_found2;
found3 <= temp_found3;
found4 <= temp_found4;
address <= temp_address;

find_match : process(clk, rst, en, user_hash1, user_hash2, user_hash3, user_hash4, cam)
begin
if (rst = '1') then 
	temp_found1 <= '0';
	temp_found2 <= '0';
	temp_found3 <= '0';
	temp_found4 <= '0';
	temp_address1 <= "1111111";
	temp_address2 <= "1111111";
	temp_address3 <= "1111111";
	temp_address4 <= "1111111";
elsif rising_edge(clk) then 
	for addr in memory_array'range loop
		if( user_hash1 = cam(conv_integer(addr))) then 
			temp_found1 <= '1';
			temp_address1 <= conv_std_logic_vector(addr, 7);
		else
			null;
		end if;
		if( user_hash2 = cam(conv_integer(addr))) then 
			temp_found2 <= '1';
			temp_address2 <= conv_std_logic_vector(addr, 7);
		else
			null;
		end if;
		if( user_hash3 = cam(conv_integer(addr))) then 
			temp_found3 <= '1';
			temp_address3 <= conv_std_logic_vector(addr, 7);
		else
			null;
		end if;
		if( user_hash4 = cam(conv_integer(addr))) then 
			temp_found4 <= '1';
			temp_address4 <= conv_std_logic_vector(addr, 7);
		else
			null;
		end if;
	end loop;
end if;
end process;


toggle_address : process(clk, rst, toggle1, toggle2, toggle3, toggle4)
begin
if (rst = '1') then 
	temp_address <= "1111111";
	valid <= '0';	
elsif rising_edge(clk) then
	if ((toggle1 = '1') and (toggle2 = '0') and (toggle3 = '0') and (toggle4 = '0') and not(temp_address1 = "1111111")) then 
		temp_address <= temp_address1;
		valid <= '1';
	elsif ((toggle1 = '0') and (toggle2 = '1') and (toggle3 = '0') and (toggle4 = '0') and not(temp_address2 = "1111111")) then 
		temp_address <= temp_address2;
		valid <= '1';
	elsif ((toggle1 = '0') and (toggle2 = '0') and (toggle3 = '1') and (toggle4 = '0') and not(temp_address3 = "1111111")) then 
		temp_address <= temp_address3;
		valid <= '1';
	elsif ((toggle1 = '0') and (toggle2 = '0') and (toggle3 = '0') and (toggle4 = '1') and not(temp_address4 = "1111111")) then 
		temp_address <= temp_address4;
		valid <= '1';
	else 
		temp_address <= "1111111";
		valid <= '0';
	end if;
end if;
end process;
end bhv;
