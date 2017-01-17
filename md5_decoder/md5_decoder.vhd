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
		found : out std_logic
);
end md5_decoder;

architecture bhv of md5_decoder is
signal end_of_file : std_logic;
signal data_to_export : real;
signal cam_en : std_logic;
signal user_hash : std_logic_vector(127 downto 0);


component cam is
port 
(		clk : in std_logic;
		en : in std_logic;
		user_hash : in std_logic_vector(127 downto 0);
		found : out std_logic
);
end component cam;
begin
user_hash <= "11100011111011010101110000101000101100110111010010100100011111100110001000011011000001011001010011101000110010010100110100110101";
--user_hash <= (others => '0');
cam_en <= '1';
mem : cam port map (clk, cam_en, user_hash, found);
end bhv;