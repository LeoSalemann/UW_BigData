ADD JAR /usr/hdp/2.5.3.0-37/hive2/lib/json-serde-1.3.8-SNAPSHOT-jar-with-dependencies.jar;

CREATE EXTERNAL TABLE IF NOT EXISTS tbl_tweets_oscar(
  tweet_id bigint,
  created_unixtime bigint,
  created_time string,
  lang string,
  displayname string,
  time_zone string,
  msg string)
ROW FORMAT DELIMITED Fields terminated by '|' STORED as textfile
LOCATION '/tmp/tweets_oscar';