library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity replaynum is
  port(datain:in integer;
       dataout:buffer integer);
end replaynum;

architecture fun1 of replaynum is
signal change:integer;
begin
  process(datain)
  begin 
    change<=datain;
	 dataout<=(change*17)/1000;
  end process;
end fun1;