library ieee;
USE ieee.std_logic.ALL;

ENTITY TLC IS 
	PORT(i_MCS, i_SSC: IN STD_lOGIC_VECTOR (3 TO 0);
	i_SSCS: IN STD_lOGIC;
	i_GClock, i_GReset: IN STD_lOGIC;
	o_MSTL, o_SSTL: OUT STD_lOGIC_VECTOR (2 to 0);
	o_BCDM, o_BCDS: OUT STD_lOGIC_VECTOR);
	
END TLC;

ARCHITECTURE RTL OF TLC IS 
component counter
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		o_Value			: OUT	STD_LOGIC_VECTOR(1 downto 0));
end component;
component counter4
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		o_Value			: OUT	STD_LOGIC_VECTOR(3 downto 0));
end component;

component comparator 
	PORT(
		i_Ai, i_Bi			: IN	STD_LOGIC_VECTOR(2 downto 0);
		o_GT, o_LT, o_EQ		: OUT	STD_LOGIC);
end component;

component SSCon	--main street controller 
	PORT (i_MSreg, iSSreg: IN STD_lOGIC_VECTOR (2 TO 0);
	i_SSCS: IN STD_lOGIC;
	i_GClock, i_GReset: IN STD_lOGIC;
	o_SSreg: OUT STD_lOGIC_VECTOR (2 to 0);
end component;

component MSCon	--side street controller
	PORT (i_MSreg, i_SSreg: IN STD_lOGIC_VECTOR (2 TO 0);
	i_SSCS: IN STD_lOGIC;
	i_GClock, i_GReset: IN STD_lOGIC;
	o_MSreg: OUT STD_lOGIC_VECTOR (2 to 0);
end component;

component threebitregister
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(2 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(2 downto 0));
end component;

BEGIN 

--Mcounter
--Scounter
--timer
--comparator
--MSCon1
--SSCon1
--MSreg
--SSreg

END RTL;