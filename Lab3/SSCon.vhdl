library ieee;
USE ieee.std_logic.ALL;

ENTITY SSCon IS 
	PORT(i_MSreg, iSSreg: IN STD_lOGIC_VECTOR (2 TO 0);
	i_SSCS: IN STD_lOGIC;
	i_GClock, i_GReset: IN STD_lOGIC;
	o_SSreg: OUT STD_lOGIC_VECTOR (2 to 0);
	
END SSCon;

ARCHITECTURE RTL OF SSCon IS 

SIGNAL int_S01, int_S02: STD_lOGIC;

--S2(m0, m1, m2, s0, s1, s2, CS) = m1'm2's1's2'CS
--S1(m0, m1, m2, s0, s1, s2, CS) = s0's1'
--S0(m0, m1, m2, s0, s1, s2, CS) = m0' + s0's2' + s2'CS'


BEGIN 
--S2

	o_SSreg(2) <= ((not i_MSreg(1))and (not i_MSreg(2)) and (not i_SSreg(1)) and (not i_SSreg(2))and ( i_SSCS) );
	
--S1 
	
	o_SSreg(1) <= ((not i_SSreg(0) and (not i_SSreg(1));
	
--S0
	
	int_S01 <= (not i_SSreg(0)) and (not i_SSreg(2));
	int_S02 <= ((not i_SSreg(2)) and (not i_SSCS));
	
	o_SSreg(0) <= (int_S01 and int_S02 and not i_MSreg(0));
	

END RTL;