-- Metric aggregation examples (adapt to your SQL engine)

-- Engagement rate by group
SELECT
  s.experiment_group,
  SUM(e.likes + e.comments + e.shares) * 1.0 / SUM(e.impressions) AS engagement_rate
FROM engagements e
JOIN sessions s ON e.session_id = s.session_id
GROUP BY 1;

-- Avg duration by group
SELECT
  experiment_group,
  AVG(session_duration_min) AS avg_session_min
FROM sessions
GROUP BY 1;
