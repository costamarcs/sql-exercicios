SELECT 
  user_id, 
  tweet_date, 
  round(
    avg(tweet_count) OVER(
	    PARTITION BY user_id
      ORDER BY tweet_date
      ROWS BETWEEN 2 PRECEDING AND current ROW
      ),2) as rolling_avg_3d
FROM tweets 
ORDER BY user_id, rolling_avg_3d; 