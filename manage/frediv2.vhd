library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity frediv2 is
port(clk_in_1MHZ:in std_logic;
   clk_out_1KHZ:out std_logic);
end frediv2;

architecture behaviorial of frediv2 is
signal cnt:integer range 0 to 100;
begin
  process(clk_in_1MHZ)
  begin
  if(clk_in_1MHZ'event and clk_in_1MHZ='1')then
  cnt<=cnt+1;
    if(cnt=100)then
	   cnt<=0;clk_out_1KHZ<='1';
	 elsif(cnt=50) then 
	   clk_out_1KHZ<='0';
	 end if;
  end if;
  end process;
end behaviorial;