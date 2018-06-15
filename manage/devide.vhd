library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity devide is
  port (distance : in integer;
        hun,ten,one : out std_logic_vector(3 downto 0));
end devide;

architecture behave of devide is
begin
  hun <= conv_std_logic_vector((distance/100),4);--百位
  ten <= conv_std_logic_vector(((distance/10) rem 10),4);--十位
  one <= conv_std_logic_vector((distance rem 10),4);--个位
end behave;
