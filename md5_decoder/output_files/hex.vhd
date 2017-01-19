library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all; -- include package stdio.vhd
use ieee.std_logic_textio.all;
use ieee.std_logic_arith.all;

entity hex_display is 
port (
	clk : in std_logic;
	address : in std_logic_vector(4 downto 0);
	hex01 : out std_logic;
	hex02 : out std_logic;
	hex03 : out std_logic;
	hex04 : out std_logic;
	hex05 : out std_logic;
	hex06 : out std_logic;
	hex11 : out std_logic;
	hex12 : out std_logic;
	hex13 : out std_logic;
	hex14 : out std_logic;
	hex15 : out std_logic;
	hex16 : out std_logic
);
end hex_display;

architecture bhv of hex_display is 
signal temp_hex01 : std_logic;
signal temp_hex02 : std_logic;
signal temp_hex03 : std_logic;
signal temp_hex04 : std_logic;
signal temp_hex05 : std_logic;
signal temp_hex06 : std_logic;
signal temp_hex11 : std_logic;
signal temp_hex12 : std_logic;
signal temp_hex13 : std_logic;
signal temp_hex14 : std_logic;
signal temp_hex15 : std_logic;
signal temp_hex16 : std_logic;
begin
hex01 <= temp_hex01;
hex02 <= temp_hex02;
hex03 <= temp_hex03;
hex04 <= temp_hex04;
hex05 <= temp_hex05;
hex06 <= temp_hex06;

hex11 <= temp_hex11;
hex12 <= temp_hex12;
hex13 <= temp_hex13;
hex14 <= temp_hex14;
hex15 <= temp_hex15;
hex16 <= temp_hex16;

drive_hex_0 : process(clk)
variable num : integer;
begin
if rising_edge(clk) then 
	if (conv_integer(address) > 9) then 
		num := conv_integer(address) - 10;
	else
		num := conv_integer(address);
	end if;
	
	if (num = 0) then 
	elsif (num = 1) then 
	elsif (num = 2) then 
	elsif (num = 3) then
	elsif (num = 4) then
	elsif (num = 5) then
	elsif (num = 6) then
	elsif (num = 7) then
	elsif (num = 8) then
	elsif (num = 9) then
	else
end if;
end process;

drive_hex_1 : process(clk)
begin

end process;

end bhv;