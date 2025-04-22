CREATE EXTERNAL TABLE IF NOT EXISTS `default`.`customer_trusted_landing` (
  `serialnumber` string,
  `sharewithpublicasofdate` date,
  `Birth_day` timestamp,
  `registrationdate` date,
  `sharewithfriendsasofdate` date
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
WITH SERDEPROPERTIES (
  'ignore.malformed.json' = 'FALSE',
  'dots.in.keys' = 'FALSE',
  'case.insensitive' = 'TRUE',
  'mapping' = 'TRUE'
)
STORED AS INPUTFORMAT 'org.apache.hadoop.mapred.TextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION 's3://tanisha13-lake-house/customer-landing/'
TBLPROPERTIES ('classification' = 'json');