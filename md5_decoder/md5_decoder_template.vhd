library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all; -- include package stdio.vhd
use ieee.std_logic_arith.all;


entity md5_decoder is
port 
(		clk : in std_logic;
		rst : in std_logic;
		toggle1 : in std_logic;
		toggle2 : in std_logic;
		toggle3 : in std_logic;
		toggle4 : in std_logic;
		found1 : out std_logic;
		found2 : out std_logic;
		found3 : out std_logic;
		found4 : out std_logic;
		hex00 : out std_logic;
		hex01 : out std_logic;
		hex02 : out std_logic;
		hex03 : out std_logic;
		hex04 : out std_logic;
		hex05 : out std_logic;
		hex06 : out std_logic;
		hex10 : out std_logic;
		hex11 : out std_logic;
		hex12 : out std_logic;
		hex13 : out std_logic;
		hex14 : out std_logic;
		hex15 : out std_logic;
		hex16 : out std_logic
);
end md5_decoder;

architecture bhv of md5_decoder is
signal end_of_file : std_logic;
signal data_to_export : real;
signal cam_en : std_logic;
signal user_hash : std_logic_vector(127 downto 0);
signal user_hash1 : std_logic_vector(127 downto 0);
signal user_hash2 : std_logic_vector(127 downto 0);
signal user_hash3 : std_logic_vector(127 downto 0);
signal user_hash4 : std_logic_vector(127 downto 0);
signal valid : std_logic;
signal address : std_logic_vector(6 downto 0);

component cam is
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
end component cam;

component hex_display is 
port (
	clk : in std_logic;
	valid : in std_logic;
	address : in std_logic_vector(6 downto 0);
	hex00 : out std_logic;
	hex01 : out std_logic;
	hex02 : out std_logic;
	hex03 : out std_logic;
	hex04 : out std_logic;
	hex05 : out std_logic;
	hex06 : out std_logic;
	hex10 : out std_logic;
	hex11 : out std_logic;
	hex12 : out std_logic;
	hex13 : out std_logic;
	hex14 : out std_logic;
	hex15 : out std_logic;
	hex16 : out std_logic
);
end component hex_display;

begin

--<hash_search_init>

cam_en <= '1';
m : cam port map (clk, rst, cam_en, user_hash1, user_hash2, user_hash3, user_hash4, toggle1, toggle2, toggle3, toggle4, found1, found2, found3, found4, valid, address);
h : hex_display port map (clk, valid, address, hex00, hex01, hex02, hex03, hex04, hex05, hex06, hex10, hex11, hex12, hex13, hex14, hex15, hex16);
end bhv;
