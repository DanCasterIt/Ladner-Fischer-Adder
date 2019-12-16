library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity NETB is 
		generic (
			N : integer := 32
		);
		Port (
			A: in std_logic_vector(N-1 downto 0);
			B: in std_logic_vector(N-1 downto 0);
			pO: out std_logic_vector(N-1 downto 0);
			gO: out std_logic_vector(N-1 downto 0)
		);
end NETB;
architecture BEHAVIORAL of NETB is
begin
	pO <= A xor B;
	gO <= A and B;
end BEHAVIORAL;