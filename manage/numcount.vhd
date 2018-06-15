library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity numcount is
  port(clk:in std_logic;
       clr:in std_logic;
		 echo:in std_logic;
		 clknum:buffer integer);
end numcount;

architecture fun1 of numcount is
signal count:integer:=0;
begin 
  process(clk,clr,echo)
  begin
  if(clk'event and clk='1') then 
    if(echo='1') then
	   count<=count+1;
		end if;
	 end if;
  if(clr='1') then count<=0;
	end if;
end process;
clknum<=count;
end fun1;


