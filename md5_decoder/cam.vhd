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
		user_hash : in std_logic_vector(127 downto 0);
		found : out std_logic
);
end cam;

architecture bhv of cam is
type memory_array is array(19 downto 0) of std_logic_vector(127 downto 0);
function init_cam(filename : in string) return memory_array is
	FILE initfile : text open read_mode is filename;
	variable temp : memory_array;
	variable rdline : line;
	variable line_content : std_logic_vector(127 downto 0);
	variable wait_state : std_logic := '0';
	variable wait_counter : integer := 0;
	begin

	for i in memory_array'range loop
		if rising_edge(clk) then
			if(wait_state = '0') then 
				readline(initfile, rdline);
				hread(rdline, line_content);
				--temp(i) := line_content;
				temp(i) := "11100011111011010101110000101000101100110111010010100100011111100110001000011011000001011001010011101000110010010100110100110101";
				wait_state := '1';
			else 
				if (wait_counter = 100) then 
					wait_state := '0';
				else 
					wait_counter := wait_counter + 1;
				end if;
			end if;
		end if;
	end loop;
	return temp;
end function;
signal cam : memory_array := init_cam("hashes.data");
signal temp_found : std_logic := '0';
begin
found <= temp_found;
find_match : process(clk, en, user_hash, cam, temp_found)
begin
if rising_edge(clk) then 
	for addr in memory_array'range loop
		if( user_hash = cam(conv_integer(addr))) then 
			temp_found <= '1';
		else
			temp_found <= temp_found;
		end if;
	end loop;
end if;
end process;
end bhv;