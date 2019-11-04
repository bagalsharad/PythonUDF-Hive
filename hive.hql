######################################
-- Use below code snippet in Hive
######################################
-- Add python script into hive
ADD FILE {path}/email_parser.py


--# Hive Query to call Python UDF
SELECT TRANSFORM (email_id)
USING 'python email_parser.py' As (email_id_new)
FROM dw_payroll.employee