CREATE EXTERNAL TABLE ${env:hiveSchema}.CLM_STAGING
(
 CLM_ID STRING,
 CLM_FORM CHAR(1),
 CLM_TYPE CHAR(1),
 TOB INT,
 PRV_ID INT,
 PHY_ID INT,
 PROC_DT STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '${env:hiveWarehousePath}/clm_staging';