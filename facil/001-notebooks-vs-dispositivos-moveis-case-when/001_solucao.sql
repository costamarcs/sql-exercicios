SELECT 
  COUNT(CASE WHEN device_type = 'laptop' 
    THEN 1 ELSE NULL END) as mobile_views,
  COUNT(CASE WHEN device_type IN ('tablet', 'phone') 
    THEN 1 ELSE NULL END) as mobile_views
FROM viewership