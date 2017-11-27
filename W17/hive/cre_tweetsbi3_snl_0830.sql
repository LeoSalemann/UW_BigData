CREATE TABLE IF NOT EXISTS tweetsbi_snl_0830
STORED AS ORC
AS SELECT
  t.*,
  s.sentiment as tsentiment,
  case s.sentiment
    when 'positive' then 2
    when 'neutral' then 1
    when 'negative' then 0
  end as sentiment  
FROM tweets_clean t LEFT OUTER JOIN tweets_sentiment_snl_0830 s on t.tweet_id = s.tweet_id;