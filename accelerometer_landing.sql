CREATE EXTERNAL TABLE IF NOT EXISTS "tanishatanisha13-lake-house"."accelerometer_landing"(
    'timestamp' bigint,
    'user' string,
    'x' float,
    'y' float,
    'z' float

)
ROW FORMAT SERDE 'org.penx.data.jsonserde.JsonSerDe'
WITH  SERDEPROPERTIES(
    'ignore.malformed.json'='FALSE',
    'dots.in.keys'='FALSE',
    'case.insensitive'='TRUE',
    'mapping'='TRUE'
)
STORED AS INPUTFORMAT 'org.apache.hadoop.mapred.TextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIngnoreKeyTextOutputFormat'
LOCATION 's3://tanisha13-lake-house/accelerometer-landing/'
TBLPROPERTIES ('classification'= 'json');