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

--<cam_init>

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
