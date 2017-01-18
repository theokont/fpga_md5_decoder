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
		found1 : out std_logic;
		found2 : out std_logic;
		found3 : out std_logic;
		found4 : out std_logic
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

component cam is
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
end component cam;
begin
user_hash1 <= "11010110111110010101011011000000001101001000100110001011001010110100001011110110110110000011101110111101010000011100100110001011";
user_hash2 <= "11110001110010110111111100000011101111101101100001110011100111101011101000000110010110101101010011111011011001001011111110100100";
user_hash3 <= (others=>'0');
user_hash4 <= "11100101101101111010010110010111101001001100111000010101011101010001111010100011111000010100101010111001010001100001011011010110";
--user_hash <= (others => '0');
cam_en <= '1';
m : cam port map (clk, cam_en, user_hash1, user_hash2, user_hash3, user_hash4, found1, found2, found3, found4);
end bhv;