library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity diffdis is
port(distance:in integer;
     control:buffer std_logic_vector(3 downto 0));
end diffdis;

architecture fun1 of diffdis is
begin
  process(distance)
  begin
  if(distance>=0 and distance<30) then control<="0000";
  elsif(distance>=30 and distance<70) then control<="0001";
  elsif(distance>=70 and distance<150) then control<="0010";
  elsif(distance>=150 and distance<200) then control<="0100";
  elsif(distance>=200) then control<="1000";
  end if;
  end process;
end architecture;