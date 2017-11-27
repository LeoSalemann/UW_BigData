CREATE EXTERNAL TABLE IF NOT EXISTS tbl_tweets_snl3(
  tweet_id bigint,
  created_unixtime bigint,
  created_time string,
  displayname string,
  msg string,
  fulltext string)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION '/tmp/tweets_snl';