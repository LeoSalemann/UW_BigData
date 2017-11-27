-- Compute sentiment
create view IF NOT EXISTS l1 as select tweet_id, words from tweets_text_partition lateral view explode(sentences(lower(msg))) dummy as words;

create view IF NOT EXISTS l2 as select tweet_id, word from l1 lateral view explode( words ) dummy as word;

create view IF NOT EXISTS l3 as select
    tweet_id,
    l2.word,
    case d.polarity
      when  'negative' then -1
      when 'positive' then 1
      else 0 end as polarity
 from l2 left outer join dictionary d on l2.word = d.word;