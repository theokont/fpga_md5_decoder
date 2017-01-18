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
		en : in std_logic;
		user_hash1 : in std_logic_vector(127 downto 0);
		user_hash2 : in std_logic_vector(127 downto 0);
		user_hash3 : in std_logic_vector(127 downto 0);
		user_hash4 : in std_logic_vector(127 downto 0);
		found1 : out std_logic;
		found2 : out std_logic;
		found3 : out std_logic;
		found4 : out std_logic
);
end cam;

architecture bhv of cam is
type memory_array is array(19 downto 0) of std_logic_vector(127 downto 0);

signal cam : memory_array;
signal temp_found1 : std_logic := '0';
signal temp_found2 : std_logic := '0';
signal temp_found3 : std_logic := '0';
signal temp_found4 : std_logic := '0';
begin

--<cam_init>

found1 <= temp_found1;
found2 <= temp_found2;
found3 <= temp_found3;
found4 <= temp_found4;
find_match : process(clk, en, user_hash, cam, temp_found)
begin
if rising_edge(clk) then 
	for addr in memory_array'range loop
		if( user_hash1 = cam(conv_integer(addr))) then 
			temp_found1 <= '1';
		else
			null;
		end if;
		if( user_hash2 = cam(conv_integer(addr))) then 
			temp_found2 <= '1';
		else
			null;
		end if;
		if( user_hash3 = cam(conv_integer(addr))) then 
			temp_found3 <= '1';
		else
			null;
		end if;
		if( user_hash4 = cam(conv_integer(addr))) then 
			temp_found4 <= '1';
		else
			null;
		end if;
	end loop;
end if;
end process;
end bhv;
