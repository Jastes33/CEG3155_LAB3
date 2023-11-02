library ieee;
USE ieee.std_logic.ALL;

ENTITY TLC IS 
	PORT(i_MCS, i_SSC: IN STD_lOGIC_VECTOR (3 TO 0);
	i_SSCS: IN STD_lOGIC;
	i_GClock, i_GReset: IN STD_lOGIC;
	o_MSTL, o_SSTL: OUT STD_lOGIC_VECTOR (2 to 0);
	o_BCDM, o_BCDS: OUT STD_lOGIC_VECTOR);
	
END TLC;

ARCHITECTURE RTL OF IS 

component counter
	PORT();
end component;

component comparator 
	PORT ();
end component;

component MSCon	--main street controller 
	PORT ();
end component;

component SSCon	--side street controller
	PORT ();
end component;

component threebitregister
	PORT();
end component;

BEGIN 

--Mcounter
--Scounter
--comparator
--MSCon1
--SSCon1
--MSreg
--SSreg

END RTL;