ADD JAR /usr/hdp/2.5.0.0-1245/hive2/lib/json-serde-1.3.8-SNAPSHOT-jar-with-dependencies.jar;

CREATE VIEW IF NOT EXISTS tweets_clean AS
SELECT
  t.tweet_id,
  t.ts,
  t.msg,
  m.country
 FROM tweets_simple t LEFT OUTER JOIN time_zone_map m ON t.time_zone = m.time_zone;