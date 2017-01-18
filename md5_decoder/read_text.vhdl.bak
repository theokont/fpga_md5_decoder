library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all; -- include package stdio.vhd
use ieee.std_logic_arith.all;


entity read_txt is
port (
	clk : in std_logic;
	-- file_ends indicates when our txt content ends
	file_ends : out std_logic;
	-- data that we save in order to export 
 	data_to_export : out real
	);

end read_txt;

architecture bhv of read_txt is 


-- data that we read from the txt
signal data_read : real;


begin

	-- process that reads from the txt
	process(clk,data_to_export)
		file infile : text is in "hash.txt" --declared input file
		variable inline : line; -- line number
		variable datareadVar : real -- variable in which we store tha data we get from the txt file
	begin
		if rising_edge(clk) then
			if (not endfile(infile)) then -- here we check if we have reached the end of the content in our txt
				readline(infile,inline);  -- reads a line from the file
				read(inline,datareadVar); -- reads the data from a line and stores it in a real type variable
				data_to_export <= datareadVar;
			else
				file_ends <= '1'; 
			end if;
		end if;

	end process;

end bhv;
