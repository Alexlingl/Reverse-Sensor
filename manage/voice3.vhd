library ieee;
use ieee.std_logic_1164.all;

entity voice3 is 
  port(control:in std_logic_vector(3 downto 0);
       clk_in:in std_logic;
       clk_out:buffer std_logic);
end entity;

architecture fun1 of voice3 is
signal n:integer range 0 to 400;
signal div:integer range  0 to 400;
signal temp:std_logic;
begin
  process(clk_in)
  begin
  if(control="0000") then div<=55;
  elsif(control="0001") then div<=160;
  elsif(control="0010") then div<=250;
  elsif(control="0100") then div<=250;
  else div<=300;
  end if;
  if(clk_in'event and clk_in='1') then
    n<=n+1;
	 if(n<50) then temp<='1';
	 elsif(n=div) then n<=0;
	 else temp<='0';
	 end if;
	end if;
  end process;
clk_out<=temp and clk_in;
end architecture;