ADD JAR /usr/hdp/current/hive-server2-hive2/lib/json-serde-1.3.8-SNAPSHOT-jar-with-dependencies.jar;

CREATE VIEW IF NOT EXISTS tweets_clean AS
SELECT
  t.tweet_id,
  t.ts,
  t.msg
 FROM tweets_simple;