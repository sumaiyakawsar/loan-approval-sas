/************************************************************************************
Name: Ms. Sumaiya Kawsar
Position: Data Scientist
Program Name:mydapproject_FT_APR_2023_1719

Description:SAS codes for DAP Assignment. This SAS code contains Data dictionary, 
Univariate and Bivariate analysis, Data cleaning and imputation w/wo macros, 
Data modelling and Generating reports for both training and testing dataset.

Date first written: Mon,22-May-2023
Date last updated: Sun,9-July-2023
Project folder: DAP_FT_APR_2023_1719
Permanent Library: LIB71719
************************************************************************************/

/* 8.1 - Display the structure of dd or md - TRAINING_DS */

TITLE 'Structure/Data Dictionary of the dataset - LIB71719.TRAINING_DS';
PROC CONTENTS DATA = LIB71719.TRAINING_DS;
RUN;

/******************************Univariate Analysis of the categorical variable STARTS HERE*********************************************/

/* 8.2.1.1	Univariate Analysis of the categorical variable – MARITAL_STATUS*/
TITLE '8.2.1.1	Univariate Analysis of the categorical variable – MARITAL_STATUS';

PROC FREQ DATA = LIB71719.TRAINING_DS;
TABLE MARITAL_STATUS;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
VBAR MARITAL_STATUS;
TITLE '8.2.1.1	Univariate Analysis of the categorical variable – MARITAL_STATUS';
RUN;
 
/* 8.2.1.2	Univariate Analysis of the categorical variable – GENDER*/
TITLE '8.2.1.2 - Univariate Analysis of the categorical variable – GENDER';

PROC FREQ DATA = LIB71719.TRAINING_DS;
TABLE GENDER;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
VBAR GENDER;
TITLE '8.2.1.2 - Univariate Analysis of the categorical variable – GENDER';
RUN;

/* 8.2.1.3 - Univariate Analysis of the categorical variable – FAMILY_MEMBERS */
TITLE '8.2.1.3 - Univariate Analysis of the categorical variable – FAMILY_MEMBERS';

PROC FREQ DATA = LIB71719.TRAINING_DS;
TABLE FAMILY_MEMBERS;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
VBAR FAMILY_MEMBERS;
TITLE '8.2.1.3 - Univariate Analysis of the categorical variable – FAMILY_MEMBERS';
RUN;

/* 8.2.1.4 - Univariate Analysis of the categorical variable – QUALIFICATION */
TITLE '8.2.1.4 - Univariate Analysis of the categorical variable – QUALIFICATION';

PROC FREQ DATA = LIB71719.TRAINING_DS;
TABLE QUALIFICATION;
RUN;
 
ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
VBAR QUALIFICATION;
TITLE '8.2.1.4 - Univariate Analysis of the categorical variable – QUALIFICATION';
RUN;

/* 8.2.1.5 - Univariate Analysis of the categorical variable – EMPLOYMENT */
TITLE '8.2.1.5 - Univariate Analysis of the categorical variable – EMPLOYMENT';

PROC FREQ DATA = LIB71719.TRAINING_DS;
TABLE EMPLOYMENT;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
VBAR EMPLOYMENT;
TITLE '8.2.1.5 - Univariate Analysis of the categorical variable – EMPLOYMENT';
RUN;

/* 8.2.1.6 - Univariate Analysis of the categorical variable – LOAN_LOCATION */
TITLE '8.2.1.6 - Univariate Analysis of the categorical variable – LOAN_LOCATION';

PROC FREQ DATA = LIB71719.TRAINING_DS;
TABLE LOAN_LOCATION;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
VBAR LOAN_LOCATION;
TITLE '8.2.1.6 - Univariate Analysis of the categorical variable – LOAN_LOCATION';
RUN;

/* 8.2.1.7 - Univariate Analysis of the categorical variable – LOAN_HISTORY */
TITLE '8.2.1.7 - Univariate Analysis of the categorical variable – LOAN_HISTORY';

PROC FREQ DATA = LIB71719.TRAINING_DS;
TABLE LOAN_HISTORY;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
VBAR LOAN_HISTORY;
TITLE '8.2.1.7 - Univariate Analysis of the categorical variable – LOAN_HISTORY';
RUN;

/* 8.2.1.8 - Univariate Analysis of the categorical variable – LOAN_APPROVAL_STATUS */
TITLE '8.2.1.8 - Univariate Analysis of the categorical variable – LOAN_APPROVAL_STATUS';

PROC FREQ DATA = LIB71719.TRAINING_DS;
TABLE LOAN_APPROVAL_STATUS;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
VBAR LOAN_APPROVAL_STATUS;
TITLE '8.2.1.8 - Univariate Analysis of the categorical variable – LOAN_APPROVAL_STATUS';
RUN;

/**************************Univariate Analysis of the Categorical variable ENDS HERE****************************** */

/************************** Univariate Analysis of the Numerical/Continuous variable STARTS HERE **************************/

/* 8.2.2.1 - Univariate Analysis of the Numerical/Continuous variable – CANDIDATE_INCOME */
TITLE '8.2.2.1 - Univariate Analysis of the Numerical/Continuous variable – CANDIDATE_INCOME';

PROC MEANS DATA = LIB71719.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR candidate_income;
RUN;

ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
HISTOGRAM candidate_income;
TITLE '8.2.2.1 - Univariate Analysis of the Numerical/Continuous variable – CANDIDATE_INCOME';
RUN;

/* 8.2.2.2 - Univariate Analysis of the Numerical/Continuous variable – GUARANTEE_INCOME */
TITLE '8.2.2.2 - Univariate Analysis of the Numerical/Continuous variable – GUARANTEE_INCOME';

PROC MEANS DATA = LIB71719.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR guarantee_income;
RUN;

ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
HISTOGRAM guarantee_income;
TITLE '8.2.2.2 - Univariate Analysis of the Numerical/Continuous variable – GUARANTEE_INCOME';
RUN;

/* 8.2.2.3 - Univariate Analysis of the Numerical/Continuous variable – LOAN_AMOUNT */
TITLE '8.2.2.3 - Univariate Analysis of the Numerical/Continuous variable – LOAN_AMOUNT';

PROC MEANS DATA = LIB71719.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR loan_amount;
RUN;

ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
HISTOGRAM loan_amount;
TITLE '8.2.2.3 - Univariate Analysis of the Numerical/Continuous variable – LOAN_AMOUNT';
RUN;

/* 8.2.2.4 - Univariate Analysis of the Numerical/Continuous variable – LOAN_DURATION */
TITLE '8.2.2.4 - Univariate Analysis of the Numerical/Continuous variable – LOAN_DURATION';

PROC MEANS DATA = LIB71719.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR loan_duration;
RUN;

ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB71719.TRAINING_DS;
HISTOGRAM loan_duration;
TITLE '8.2.2.4 - Univariate Analysis of the Numerical/Continuous variable – LOAN_DURATION';
RUN;

/*****************************UNIVARIATE ANALYSIS of the Numerical/Continuous variable ENDS HERE************************************/

/************************* Bivariate analysis of the variables - Categorical Variable vs Categorical Variable STARTS HERE*************************/

/* 8.2.3.1 - Categorical Variable[GENDER] vs Categorical Variable[LOAN_APPROVAL_STATUS] */
TITLE1 '8.2.3.1 - Bivariate analysis of the variables:  ';
TITLE2 'Categorical Variable[GENDER] vs Categorical Variable[LOAN_APPROVAL_STATUS]';

PROC FREQ DATA = LIB71719.training_ds;

TABLE gender * loan_approval_status/
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );

ODS GRAPHICS / RESET WIDTH = 5.0 IN HEIGHT = 4.0 IN IMAGEMAP;

RUN;

/* 8.2.3.2 - Categorical Variable[QUALIFICATION] vs Categorical Variable[EMPLOYMENT] */
TITLE1 '8.2.3.2 - Bivariate analysis of the variables: ';
TITLE2 'Categorical Variable[QUALIFICATION] vs Categorical Variable[EMPLOYMENT]';

PROC FREQ DATA = LIB71719.training_ds;

TABLE qualification * employment/
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );

ODS GRAPHICS / RESET WIDTH = 5.0 IN HEIGHT = 4.0 IN IMAGEMAP;

RUN;

/* 8.2.3.3  - Categorical Variable[MARITAL_STATUS] vs Categorical Variable[LOAN_APPROVAL_STATUS] */
TITLE1 '8.2.3.3 - Bivariate analysis of the variables:  ';
TITLE2 'Categorical Variable[MARITAL_STATUS] vs Categorical Variable[LOAN_APPROVAL_STATUS]';

PROC FREQ DATA = LIB71719.training_ds;

TABLE marital_status * loan_approval_status/
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );

ODS GRAPHICS / RESET WIDTH = 5.0 IN HEIGHT = 4.0 IN IMAGEMAP;

RUN; 

/************************* Bivariate analysis of the variables - Categorical Variable vs Categorical Variable ENDS HERE *************************/

/************************* Bivariate analysis of the variables - Categorical Variable vs Continuous Variable STARTS HERE*************************/
 
/* 8.2.3.4	Categorical variable (MARITAL_STATUS) vs Continuous variable (CANDIDATE_INCOME)  */
TITLE1 '8.2.3.4 Bivariate Analysis of variables: ';
TITLE2 'Categorical variable [MARITAL_STATUS] vs Numeric/Continuous[CANDIDATE_INCOME]';

PROC MEANS DATA = LIB71719.training_ds;

CLASS marital_status; /*It is a Categorical Variable*/
VAR candidate_income; /*It is a Numeric/continuous variable*/

RUN;

/* 8.2.3.5	Categorical variable (GENDER) vs Continuous variable (LOAN_AMOUNT)  */
TITLE1 '8.2.3.5: Bivariate Analysis of variables: ';
TITLE2 'Categorical variable [GENDER] vs Numeric/Continuous[LOAN_AMOUNT]';

PROC MEANS DATA = LIB71719.training_ds;

CLASS gender; /*It is a Categorical Variable*/
VAR loan_amount; /*It is a Numeric/continuous variable*/

RUN;

/* 8.2.3.6 Categorical variable (QUALIFICATION) vs Continuous variable (CANDIDATE_INCOME) */
TITLE1 '8.2.3.6 Bivariate Analysis of variables: ';
TITLE2 'Categorical variable [QUALIFICATION] vs Numeric/Continuous[CANDIDATE_INCOME]';

PROC MEANS DATA = LIB71719.training_ds;

CLASS qualification; /*It is a Categorical Variable*/
VAR candidate_income; /*It is a Numeric/continuous variable*/

RUN;

/********** Bivariate analysis of the variables - Categorical Variable vs Continuous Variable ENDS HERE************/
/************************* Bivariate analysis of the variables OVERALL ENDS HERE*************************/ 

/***********************************************DATA CLEANING STARTS HERE***********************************************/
/********************************************CHECKING MISSING VALUES OVERALL***********************************************/

/* 8.3.1 Find the variables with missing values found in LIB71719.TRAINING_DS */
PROC FORMAT;

VALUE $missfmt ' ' = 'Missing' other = 'Not missing';
VALUE  missfmt .   = 'Missing' other = 'Not missing';

RUN;

PROC FREQ DATA = LIB71719.TRAINING_DS;

FORMAT _CHAR_ $missfmt.;
FORMAT _NUMERIC_ missfmt.;

TABLE _CHAR_ / missing nocum nopercent;
TABLE _NUMERIC_/ missing nocum nopercent;
 
RUN;

/* 8.3.2 Cleaning the categorical variable - GENDER */
TITLE '8.3.2.1: Find the details of the observations with missing values in the varaible - GENDER';
FOOTNOTE '-------END--------';

PROC SQL;
SELECT * 
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.gender eq '' ) OR 
		( e.gender IS MISSING ) );
		
QUIT;

TITLE '8.3.2.2: Count the total number of the observations with missing values in the varaible - GENDER';
FOOTNOTE '-------END--------';

PROC SQL;

SELECT COUNT(*) Label = "Number of observations"
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.gender eq '' ) OR 
		( e.gender IS MISSING ) );
		
QUIT;


/* 8.3.2.3: Save the statistics (gender, name and number of applicants)  in a dataset */
PROC SQL;

CREATE TABLE LIB71719.TRAINING_GENDER_DS AS
SELECT e.gender AS gender_name,
		COUNT(*) AS no_of_applicants
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.gender ne '' ) OR 
		( e.gender IS NOT MISSING ) )
GROUP BY e.gender;

QUIT;

/* 8.3.2.4: Make a backup copy ...*/
PROC SQL;

CREATE TABLE LIB71719.TRAINING_BK_DS AS
SELECT * 
FROM LIB71719.TRAINING_DS e;

QUIT;

/* 8.3.2.5: Impute the missing values found in the categorical variable - gender */

PROC SQL;

UPDATE LIB71719.TRAINING_DS
SET gender = ( SELECT e.gender_name Label = 'gender_name'
  			   FROM LIB71719.TRAINING_GENDER_DS e
  			   WHERE e.no_of_applicants eq ( SELECT MAX(e.no_of_applicants) Label = 'Highest Count'
  								 			  FROM LIB71719.TRAINING_GENDER_DS e ) )
								/* This sub-program is to find the higest count */
WHERE ( ( gender eq '' ) OR 
		( gender IS MISSING ) );
		
QUIT;

TITLE '8.3.2.6: (After imputation) Find the details of the observations with missing values in GENDER';
FOOTNOTE '-------END--------';

PROC SQL;
SELECT * 
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.gender eq '' ) OR 
		( e.gender IS MISSING ) );
		
QUIT;

TITLE '8.3.2.6: (After imputation) Count the total number of the observations with missing values in GENDER';
FOOTNOTE '-------END--------';
PROC SQL;

SELECT COUNT(*) Label = "Number of observations"
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.gender eq '' ) OR 
		( e.gender IS MISSING ) );
		
QUIT;

/* 8.3.3 Cleaning the categorical variable - FAMILY_MEMBER */
TITLE '8.3.3.1 - List the applicants with "3+" family_members';

PROC SQL;

SELECT *
FROM LIB71719.TRAINING_DS e
WHERE ( e.family_members eq '3+');

QUIT;

TITLE '8.3.3.2 - Count the applicants with "3+" family_members';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB71719.TRAINING_DS e
WHERE ( e.family_members eq '3+');

QUIT;

TITLE '8.3.3.3 - Remove the Symbol [+] found in the variable FAMILY_MEMBERS';
PROC SQL;

SELECT t.family_members Label = 'Family Members',
	   substr(t.family_members,1,1) Label = '1st letter',
	   substr(t.family_members,2,1) Label = '2nd letter'
FROM LIB71719.TRAINING_DS t
WHERE ( t.family_members eq '3+');

QUIT;

/* 8.3.3.4 - Remove the Symbol [+] found in FAMILY_MEMBERS and update it on the dataset */
PROC SQL;

UPDATE LIB71719.TRAINING_DS
SET family_members = substr( family_members,1,1 )
WHERE ( family_members eq '3+' );

QUIT;

/* 8.3.3.5 - Save the statistics (family members and count) in a dataset */
PROC SQL;

CREATE TABLE LIB71719.TRAINING_FM_STATISTICS_DS AS
SELECT t.family_members AS family_members,
	   COUNT(*) AS counts
FROM LIB71719.TRAINING_DS t
WHERE ( ( t.family_members ne '' ) OR	
		( t.family_members IS NOT MISSING ) )
GROUP BY t.family_members;

QUIT;

/* 8.3.3.6 - Impute the missing value found in the variable - family members */
PROC SQL;
UPDATE LIB71719.TRAINING_DS
SET family_members = ( SELECT t.family_members AS family_members
					   FROM LIB71719.TRAINING_FM_STATISTICS_DS t
  					   WHERE t.counts eq ( SELECT MAX(t.counts) AS counts
  					   					   FROM LIB71719.TRAINING_FM_STATISTICS_DS t ) )
										   /* The above is a sub program to find a highest count */
WHERE ( ( family_members eq '' ) OR	
		( family_members IS MISSING ) );
QUIT;

/* 8.3.4 Cleaning the categorical variable - MARITAL_STATUS */
TITLE '8.3.4.1: Count the observations with missing values in MARITAL_STATUS';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.marital_status eq '' ) OR 
		( e.marital_status IS MISSING ) );
		
QUIT;

/* 8.3.4.2: Save the statistics (marital_status and number of applicants)  in a dataset */
PROC SQL;

CREATE TABLE LIB71719.TRAINING_MS_STATS_DS AS
SELECT e.marital_status AS marital_status,
		COUNT(*) AS no_of_applicants
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.marital_status ne '' ) OR 
		( e.marital_status IS NOT MISSING ) )
GROUP BY e.marital_status;

QUIT;

/* 8.3.4.3 - Impute the missing value found in the variable - marital_status */
PROC SQL;

UPDATE LIB71719.TRAINING_DS
SET marital_status = ( SELECT t.marital_status AS marital_status
					   FROM LIB71719.TRAINING_MS_STATS_DS t
  					   WHERE t.no_of_applicants eq ( SELECT MAX(t.no_of_applicants) AS counts
  					   					   			 FROM LIB71719.TRAINING_MS_STATS_DS t ) )
										   /* The above is a sub program to find a highest count */
WHERE ( ( marital_status eq '' ) OR	
		( marital_status IS MISSING ) );
		
QUIT;

/* 8.3.5 Cleaning the categorical variable - EMPLOYMENT */
TITLE '8.3.5.1: Count the observations with missing values in EMPLOYMENT';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.employment eq '' ) OR 
		( e.employment IS MISSING ) );
		
QUIT;

/* 8.3.5.2: Save the statistics (employment and number of applicants)  in a dataset */
PROC SQL;

CREATE TABLE LIB71719.TRAINING_E_STATS_DS AS
SELECT e.employment AS employment,
		COUNT(*) AS no_of_applicants
FROM LIB71719.TRAINING_DS e
WHERE ( ( e.employment ne '' ) OR 
		( e.employment IS NOT MISSING ) )
GROUP BY e.employment;

QUIT;

/* 8.3.5.3 - Impute the missing value found in the variable - employment */
PROC SQL;

UPDATE LIB71719.TRAINING_DS
SET employment = ( SELECT t.employment AS employment
				   FROM LIB71719.TRAINING_E_STATS_DS t
				   WHERE t.no_of_applicants eq ( SELECT MAX(t.no_of_applicants) AS counts
  					   					   		 FROM LIB71719.TRAINING_E_STATS_DS t ) )
										   		/* The above is a sub program to find a highest count */
WHERE ( ( employment eq '' ) OR	
		( employment IS MISSING ) );
		
QUIT;

/* 8.3.6 Cleaning the categorical variable - LOAN_HISTORY */
TITLE '8.3.6.1: Count the observations with missing values in LOAN_HISTORY';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB71719.TRAINING_DS e
WHERE ( e.loan_history IS MISSING );
		
QUIT;

/* 8.3.6.2: Save the statistics (loan_history and number of applicants)  in a dataset */
PROC SQL;

CREATE TABLE LIB71719.TRAINING_LH_STATS_DS AS
SELECT e.loan_history AS loan_history,
	   COUNT(*) AS no_of_applicants
FROM LIB71719.TRAINING_DS e
WHERE ( e.loan_history IS NOT MISSING ) 
GROUP BY e.loan_history;

QUIT;

/* 8.3.5.3 - Impute the missing value found in the variable - loan_history */
PROC SQL;

UPDATE LIB71719.TRAINING_DS
SET loan_history = ( SELECT t.loan_history AS loan_history
				     FROM LIB71719.TRAINING_LH_STATS_DS t
				     WHERE t.no_of_applicants eq ( SELECT MAX(t.no_of_applicants) AS counts
  					   					   		   FROM LIB71719.TRAINING_LH_STATS_DS t ) )
										   		/* The above is a sub program to find a highest count */
WHERE ( loan_history IS MISSING );
		
QUIT;
 
/* 8.3.7 Cleaning the continuous variable - loan_amount */ 
TITLE '8.3.7.1 Count the number of applications missing in loan_amount';
FOOTNOTE '--------------End-------------';

PROC SQL;

SELECT COUNT(*) Label = 'No. of Applications'
FROM LIB71719.TRAINING_DS t
WHERE ( ( t.loan_amount eq . ) OR
		( t.loan_amount IS MISSING ) );

QUIT;

/* 8.3.7.2 Impute the missing values found in the variable - LOAN_AMOUNT */

PROC STDIZE DATA=LIB71719.TRAINING_DS REPONLY

METHOD = MEDIAN OUT = LIB71719.TRAINING_DS;
VAR loan_amount;

QUIT; 

/* 8.3.8 Cleaning the continuous variable - loan_duration */ 
TITLE '8.3.8.1 Count the number of applications missing in loan_duration';
FOOTNOTE '--------------End-------------';

PROC SQL;

SELECT COUNT(*) Label = 'No. of Applications'
FROM LIB71719.TRAINING_DS t
WHERE ( ( t.loan_duration eq . ) OR
		( t.loan_duration IS MISSING ) );

QUIT;

/* 8.3.8.2 Impute the missing values found in the variable - LOAN_DURATION */

PROC STDIZE DATA=LIB71719.TRAINING_DS REPONLY

METHOD = MEDIAN OUT = LIB71719.TRAINING_DS;
VAR loan_duration;

QUIT; 
 
/* 8.4 Find the variables with missing values found in LIB71719.TRAINING_DS */
PROC FREQ DATA = LIB71719.TRAINING_DS;

FORMAT _CHAR_ $missfmt.;
FORMAT _NUMERIC_ missfmt.;

TABLE _CHAR_ / missing nocum nopercent;
TABLE _NUMERIC_/ missing nocum nopercent;
 
RUN;
/********************************************** TRAINING DATASET ENDS HERE **********************************************/

/********************************************** TESTING DATASET STARTS HERE **********************************************/

/* 9.2 - Display the structure of dd or md - TESTING_DS*/
TITLE 'Structure/Data Dictionary of the dataset - LIB71719.TESTING_DS';
PROC CONTENTS DATA = LIB71719.TESTING_DS;
RUN;

/************************************ Univariate analysis of the variables STARTS HERE************************************/ 
/* 9.3.1 Univariate analysis of the variables for categorical variables */
/* Macro begins here */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_UVA_CATE_TEST_1719(pcate_vari_name, pds_name, ptitle);

TITLE &ptitle;
PROC FREQ DATA = &pds_name;
TABLE &pcate_vari_name;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = &pds_name;
VBAR &pcate_vari_name;
TITLE &ptitle;
RUN;

%MEND MACRO_UVA_CATE_TEST_1719;
/* Macro ends here */ 
   
/* To call / run the Macro - MACRO_UVA_CATE_TEST_1719  */
%MACRO_UVA_CATE_TEST_1719(GENDER, LIB71719.TESTING_DS, 
"Univariate Analysis of the categorical varaible - GENDER");
%MACRO_UVA_CATE_TEST_1719(MARITAL_STATUS, LIB71719.TESTING_DS, 
"Univariate Analysis of the categorical varaible - MARITAL_STATUS");
%MACRO_UVA_CATE_TEST_1719(FAMILY_MEMBERS, LIB71719.TESTING_DS, 
"Univariate Analysis of the categorical varaible - FAMILY_MEMBERS");
%MACRO_UVA_CATE_TEST_1719(QUALIFICATION, LIB71719.TESTING_DS, 
"Univariate Analysis of the categorical varaible - QUALIFICATION");
%MACRO_UVA_CATE_TEST_1719(EMPLOYMENT, LIB71719.TESTING_DS, 
"Univariate Analysis of the categorical varaible - EMPLOYMENT");
%MACRO_UVA_CATE_TEST_1719(LOAN_HISTORY, LIB71719.TESTING_DS, 
"Univariate Analysis of the categorical varaible - LOAN_HISTORY");
%MACRO_UVA_CATE_TEST_1719(LOAN_LOCATION, LIB71719.TESTING_DS, 
"Univariate Analysis of the categorical varaible - LOAN_LOCATION");

/* 9.3.2 Univariate analysis of the variables for continuous variables */
/* Macro begins here */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_UVA_CONTI_TEST_1719(pconti_vari_name, pds_name, ptitle);

TITLE &ptitle;

PROC MEANS DATA = &pds_name N NMISS MIN MAX MEAN MEDIAN STD;
VAR &pconti_vari_name;
RUN;
ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;

PROC SGPLOT DATA = &pds_name;
HISTOGRAM &pconti_vari_name;
TITLE &ptitle;
RUN;

%MEND MACRO_UVA_CONTI_TEST_1719;
/* Macro ends here */ 

%MACRO_UVA_CONTI_TEST_1719(CANDIDATE_INCOME, LIB71719.TESTING_DS, 
"Univariate Analysis of the Continuous variable – CANDIDATE_INCOME");
%MACRO_UVA_CONTI_TEST_1719(GUARANTEE_INCOME, LIB71719.TESTING_DS, 
"Univariate Analysis of the Continuous variable – GUARANTEE_INCOME");
%MACRO_UVA_CONTI_TEST_1719(LOAN_DURATION, LIB71719.TESTING_DS, 
"Univariate Analysis of the Continuous variable – LOAN_DURATION");
%MACRO_UVA_CONTI_TEST_1719(LOAN_AMOUNT, LIB71719.TESTING_DS, 
"Univariate Analysis of the Continuous variable – LOAN_AMOUNT");

/************************* Univariate analysis of the variables ENDS HERE*************************/ 

/************************* Bivariate analysis of the variables STARTS HERE *************************/ 

/* 9.3.3 Bivariate analysis of the Categorical variable vs Categorical variable using SAS Macro */
/* My Macro starts here */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_BVA_CATE_CATE_1719(pcate_varia, pcate_varib, pds_name, ptitlea, ptitleb);
TITLE1 &ptitlea;
TITLE2 &ptitleb;

PROC FREQ DATA = &pds_name;

TABLE &pcate_varia* &pcate_varib/
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );

RUN;
%MEND MACRO_BVA_CATE_CATE_1719;
/* My Macro ends here */

/* Call the Macro - MACRO_BVA_CATE_CATE_1719 */
%MACRO_BVA_CATE_CATE_1719(MARITAL_STATUS, QUALIFICATION, LIB71719.TESTING_DS, 
"Bivariate analysis of the Variables", "MARITAL_STATUS VS QUALIFICATION");
%MACRO_BVA_CATE_CATE_1719(QUALIFICATION, LOAN_HISTORY, LIB71719.TESTING_DS, 
"Bivariate analysis of the Variables", "QUALIFICATION VS LOAN_HISTORY");
%MACRO_BVA_CATE_CATE_1719(GENDER, QUALIFICATION, LIB71719.TESTING_DS, 
"Bivariate analysis of the Variables", "GENDER VS QUALIFICATION");

/* 9.3.4 Bivariate analysis of the Categorical vs Continuous variable using SAS Macro */
/* My Macro starts here */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_BVA_CATE_CONTI_1719(pcate_vari, pconti_vari, pds_name, ptitlea, ptitleb);

TITLE1 &ptitlea;
TITLE2 &ptitleb;
 
PROC MEANS DATA = &pds_name;

CLASS &pcate_vari; /*It is a Categorical Variable*/
VAR &pconti_vari; /*It is a Numeric/continuous variable*/

RUN;

%MEND MACRO_BVA_CATE_CONTI_1719;
/* My Macro ends here */

/* Call the Macro - MACRO_BVA_CATE_CONTI_1719 */
%MACRO_BVA_CATE_CONTI_1719(GENDER, LOAN_AMOUNT, LIB71719.TESTING_DS, 
"Bivariate analysis of the Variables:", "GENDER VS LOAN_AMOUNT");
%MACRO_BVA_CATE_CONTI_1719(EMPLOYMENT, CANDIDATE_INCOME, LIB71719.TESTING_DS, 
"Bivariate analysis of the Variables", "EMPLOYMENT VS CANDIDATE_INCOME");
%MACRO_BVA_CATE_CONTI_1719(EMPLOYMENT, LOAN_AMOUNT, LIB71719.TESTING_DS, 
"Bivariate analysis of the Variables", "EMPLOYMENT VS LOAN_AMOUNT");

/********************* Bivariate analysis of the variables ENDS HERE *********************/

/***************************** DATA CLEANING STARTS HERE *****************************/
/* 9.4.1: Create a backup copy ...*/
PROC SQL;

CREATE TABLE LIB71719.TESTING_BK_DS AS
SELECT * 
FROM LIB71719.TESTING_DS e;
QUIT;

/* 9.4.2 Find the variables with missing values found in LIB71719.testing_ds */
PROC FREQ DATA = LIB71719.testing_ds;

FORMAT _CHAR_ $missfmt.;
FORMAT _NUMERIC_ missfmt.;

TABLE _CHAR_ / missing nocum nopercent;
TABLE _NUMERIC_/ missing nocum nopercent;
 
RUN;

/* 9.4.3 Cleaning the categorical variable - FAMILY_MEMBER */
TITLE '9.4.3.1 - Count the applicants with "3+" family_members';

PROC SQL;

SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB71719.TESTING_DS e
WHERE ( e.family_members eq '3+');

QUIT;

/* 9.4.3.2 - Remove the Symbol [+] found in FAMILY_MEMBERS and update it on the dataset */
PROC SQL;

UPDATE LIB71719.TESTING_DS
SET family_members = substr( family_members,1,1 )
WHERE ( family_members eq '3+' );

QUIT;

/* 9.4.4 Count the number of applications missing in each variables using MACRO */
/* My Macro starts here */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_CLEANING_VAR_1719(pcate_vari, pds_name, ptitlea);

TITLE1 &ptitlea; 
PROC SQL;

SELECT COUNT(*) Label = "Number of observations"
FROM &pds_name e
WHERE ( e.&pcate_vari IS MISSING );
		
QUIT;

%MEND MACRO_CLEANING_VAR_1719;
/* My Macro ends here */
 
%MACRO_CLEANING_VAR_1719(GENDER, LIB71719.TESTING_DS, 
"Count the total number of the observations with missing values in the varaible - GENDER");
%MACRO_CLEANING_VAR_1719(FAMILY_MEMBERS, LIB71719.TESTING_DS, 
"Count the total number of the observations with missing values in the varaible - FAMILY_MEMBERS");
%MACRO_CLEANING_VAR_1719(EMPLOYMENT, LIB71719.TESTING_DS, 
"Count the total number of the observations with missing values in the varaible - EMPLOYMENT");
%MACRO_CLEANING_VAR_1719(LOAN_HISTORY, LIB71719.TESTING_DS, 
"Count the total number of the observations with missing values in the varaible - LOAN_HISTORY");
%MACRO_CLEANING_VAR_1719(LOAN_AMOUNT, LIB71719.TESTING_DS, 
"Count the total number of the observations with missing values in the varaible - LOAN_AMOUNT");
%MACRO_CLEANING_VAR_1719(LOAN_DURATION, LIB71719.TESTING_DS, 
"Count the total number of the observations with missing values in the varaible - LOAN_DURATION");

/* 9.4.5 Save the statistics (variables and number of applicants) in a dataset using MACRO*/
/* My Macro starts here */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_CATE_SAVE_1719(pcate_vari, pds_name,pds_name2);

PROC SQL;

CREATE TABLE &pds_name2 AS
SELECT e.&pcate_vari AS &pcate_vari,
		COUNT(*) AS no_of_applicants
FROM &pds_name e
WHERE ( e.&pcate_vari IS NOT MISSING )
GROUP BY e.&pcate_vari;

QUIT;

%MEND MACRO_CATE_SAVE_1719;
/* My Macro ends here */
 
%MACRO_CATE_SAVE_1719(GENDER, LIB71719.TESTING_DS, LIB71719.TESTING_GENDER_DS);
%MACRO_CATE_SAVE_1719(FAMILY_MEMBERS, LIB71719.TESTING_DS, LIB71719.TESTING_FM_DS);
%MACRO_CATE_SAVE_1719(EMPLOYMENT, LIB71719.TESTING_DS, LIB71719.TESTING_E_DS);
%MACRO_CATE_SAVE_1719(LOAN_HISTORY, LIB71719.TESTING_DS, LIB71719.TESTING_LH_DS);

/* 9.4.6 Imputation of missing values in the categorical variable using MACRO */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_CATE_IMPUTE_1719(pcate_vari,plabel, pds_name,pds_name2);

PROC SQL;

UPDATE &pds_name
SET &pcate_vari = ( SELECT e.&pcate_vari Label = &plabel
					FROM &pds_name2 e
					WHERE e.no_of_applicants eq ( SELECT MAX(e.no_of_applicants) Label = 'Highest Count'
  								 			  	  FROM &pds_name2 e ) )
								/* This sub-program is to find the higest count */
WHERE ( &pcate_vari IS MISSING );
		
QUIT;

%MEND MACRO_CATE_IMPUTE_1719;
/* My Macro ends here */
 
%MACRO_CATE_IMPUTE_1719(GENDER,"gender_name", LIB71719.TESTING_DS, LIB71719.TESTING_GENDER_DS);
%MACRO_CATE_IMPUTE_1719(FAMILY_MEMBERS,"family", LIB71719.TESTING_DS, LIB71719.TESTING_FM_DS);
%MACRO_CATE_IMPUTE_1719(EMPLOYMENT,"employment", LIB71719.TESTING_DS, LIB71719.TESTING_E_DS);
%MACRO_CATE_IMPUTE_1719(LOAN_HISTORY,"loan_history", LIB71719.TESTING_DS, LIB71719.TESTING_LH_DS);

/* 9.4.7 Impute the missing values found in the continuous variables using MACRO*/
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_CONTI_IMPUTE_1719(pconti_vari, pds_name);

PROC SQL;
 
PROC STDIZE DATA=&pds_name REPONLY

METHOD = MEDIAN OUT = &pds_name;
VAR &pconti_vari;
		
QUIT;

%MEND MACRO_CONTI_IMPUTE_1719;
/* My Macro ends here */
 
%MACRO_CONTI_IMPUTE_1719(LOAN_AMOUNT, LIB71719.TESTING_DS);
%MACRO_CONTI_IMPUTE_1719(LOAN_DURATION, LIB71719.TESTING_DS);

/* 9.4.8 After Cleaning */
PROC FREQ DATA = LIB71719.testing_ds;

FORMAT _CHAR_ $missfmt.;
FORMAT _NUMERIC_ missfmt.;

TABLE _CHAR_ / missing nocum nopercent;
TABLE _NUMERIC_/ missing nocum nopercent;
 
RUN;

/************************************* Models Start here *************************************/
/* 9.5.1 Create the model */
PROC LOGISTIC DATA = LIB71719.TRAINING_DS OUTMODEL= LIB71719.TRAINING_71719_LR_MODEL;
CLASS
GENDER
FAMILY_MEMBERS
LOAN_LOCATION
LOAN_HISTORY
MARITAL_STATUS
QUALIFICATION
EMPLOYMENT;
/* Above are categorical variables */
MODEL LOAN_APPROVAL_STATUS = 
/*PLACE HERE ALL THE INDEPENDENT VARIABLES*/
/* LOAN_APPLICATION_STATUS IS A DEPENDENT VARIABLE */
GENDER
FAMILY_MEMBERS
LOAN_LOCATION
LOAN_HISTORY
MARITAL_STATUS
QUALIFICATION
EMPLOYMENT
LOAN_AMOUNT
LOAN_DURATION;
OUTPUT OUT = LIB71719.TRAINING_71719_OUT_DS P = PRED_PROB;
/*PRED_PROB -> Predicted probablity - variable to hold predicted probability
OUT -> the output will be stored in the dataset
Akaike Information criterion must ( AIC ) < SC ( Schwartz Criterion )*/
/*If Pr > ChiSq is <= 0.05, it means that independent variable is an 
important variable and as truely contributing to predite dependent variable */
RUN;

/**************************************************************
9.5.2 Predict the loan approval status using the model created
**************************************************************/
PROC LOGISTIC INMODEL=LIB71719.TRAINING_71719_LR_MODEL;

SCORE DATA = LIB71719.TESTING_DS
OUT = LIB71719.TESTING_PREDICTED_DS;

QUIT;

/*******************************************************************************
9.6 Find the physical location of the SAS library - LIB71719 along with all datasets
/home/u62928791/DAP_FT_APR_2023_1719
********************************************************************************/

PROC DATASETS LIBRARY = LIB71719 memtype = DATA;
RUN;

/********************************************************************
 9.6.1 Generate report carrying loan approval status (without using SAS ODS)
********************************************************************/

/* STEP 1: Arrange the data */
OPTION NODATE;
PROC SORT DATA = LIB71719.TESTING_PREDICTED_DS OUT = LIB71719.TESTING_PREDICTED_OUT_DS;
BY loan_location
   sme_loan_id_no;
RUN;

OPTION NODATE;
PROC PRINT DATA = LIB71719.TESTING_PREDICTED_OUT_DS SPLIT = '*';
id loan_location;
by loan_location;
var sme_loan_id_no
	candidate_income
	loan_amount
	loan_duration
	i_loan_approval_status;
sum candidate_income loan_amount;

label loan_location = 'LOAN LOCATION*============='
	  sme_loan_id_no = 'LOAN ID*======='
	  candidate_income = 'CANDIDATE INCOME*==============='
	  loan_amount = 'LOAN AMOUNT*==========='
	  loan_duration = 'LOAN DURATION*============='
	  i_loan_approval_status = 'LOAN APPROVAL STATUS*====================';

TITLE1 'Bank Loan approval status predicted';
TITLE2 'APU, TPM';

RUN;

/* 9.6.2 Generating report using SAS Macro */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_REPORT_FOR_LAS( ploan_location = Village, 
							 pvari_name = loan_amount, 
							 pmin_loan_amount = 0, 
							 phigh_loan_amount = 146 );

ODS NOPROCTITLE;
ODS EXCEL FILE = "/home/u62928791/DAP_FT_APR_2023_1719/&pvari_name .xlsx";
%IF %UPCASE(&ploan_location) = VILLAGE %THEN %DO;
	PROC SQL;
		CREATE TABLE LIB71719.TESTING_LOCATION_LOAN_AMOUNT_DS AS
		SELECT loan_location,
			   AVG(loan_amount) AS Average "Average &pvari_name"
		FROM LIB71719.TRAINING_DS
		GROUP BY loan_location;
	QUIT;
	
	PROC FORMAT;
		VALUE underperform &pmin_loan_amount - < &phigh_loan_amount = 'Salmon';
	QUIT;
	
	ODS EXCEL OPTIONS (Sheet_name="Average - &pvari_name ");
	TITLE "Location-wise an Average - &pvari_name applied";
	FOOTNOTE "The &pvari_name below 146K is shaded in Red";
	
	PROC PRINT DATA=LIB71719.TESTING_LOCATION_LOAN_AMOUNT_DS NOOBS LABEL;
		VAR loan_location Average / style={background=underperform.};
	RUN;
	
	FOOTNOTE;
	
%END;

ODS EXCEL CLOSE;

%MEND MACRO_REPORT_FOR_LAS;

/* To call the macro - MACRO_REPORT_FOR_LAS */
%MACRO_REPORT_FOR_LAS();