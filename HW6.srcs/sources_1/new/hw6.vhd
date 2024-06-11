LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY hw_6 IS
  port (X1, X2, RESET: in STD_LOGIC;
  Y1, Y2, Y3: inout STD_LOGIC;
   Z: out STD_LOGIC);
END hw_6;

--
ARCHITECTURE behavioral OF hw_6 IS
BEGIN
  Y1 <= NOT(NOT(((Y1 AND NOT(Y2) AND Y3 AND NOT(X2)) 

        OR (NOT(Y1) AND NOT(Y2) AND Y3 AND NOT(X1) AND X2)) AND NOT(RESET)));


  Y2 <= NOT(NOT(((NOT(Y1) AND Y2 AND NOT(Y3))

        OR (NOT(Y1) AND Y2 AND X1 and  NOT(X2))

        OR (NOT(Y1) AND NOT(Y3) AND X1 AND X2)) AND NOT(RESET)));


  Y3 <= NOT(NOT(((NOT(Y2) AND Y3 AND X2)

        OR (NOT(Y2) AND Y3 AND NOT(X1))

        OR (Y1 AND NOT(Y2) AND Y3)

        OR (NOT(Y1) AND Y2 AND X1 AND NOT(X2))

        OR (NOT(Y1) AND Y2 AND Y3 AND X1)

        OR (NOT(Y1) AND Y3 AND NOT(X1) AND NOT(X2))) AND NOT(RESET)));
  
  
	  
  Z <= ((NOT(Y1) AND NOT(X1)) 
        OR (NOT(Y1) AND NOT(Y3) AND X2)
        OR (NOT(Y1) AND NOT (Y2) AND NOT(Y3))
        OR (NOT(Y1) AND NOT(Y2) AND X1 AND NOT(X2))
        OR (Y1 AND NOT(Y2) AND Y3 AND X2)
        OR (NOT(Y2) AND Y3 AND NOT(X1) AND X2)) AND NOT(RESET);
  
END behavioral;
