library ieee;
USE ieee.std_logic.ALL;

ENTITY MSCon IS 
	PORT(i_MSreg, i_SSreg: IN STD_lOGIC_VECTOR (2 TO 0);
	i_SSCS: IN STD_lOGIC;
	i_GClock, i_GReset: IN STD_lOGIC;
	o_MSreg: OUT STD_lOGIC_VECTOR (2 to 0);
	
END MSCon;

ARCHITECTURE RTL OF MSCon IS 

SIGNAL int_M01, int_M02: STD_lOGIC;

BEGIN 
--M2
	
	o_MSreg(2) <= ((not i_MSreg(1))and (not i_SSreg(1)) and (not i_SSreg(2)) and (not i_SSCS) );
	
--M1 
	
	o_MSreg(1) <= ((not i_MSreg(0) and (not i_MSreg(1) and i_SSCS);
	
--M0
	
	int_M01 <= (not i_MSreg(0)) and (not i_MSreg(2));
	int_M02 <= (i_mSreg(0) and i_SSCS);
	
	o_MSreg(0) <= (int_M01 and int_M02 and not i_SSreg(0));
	

END RTL;