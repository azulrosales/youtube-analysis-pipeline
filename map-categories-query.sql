-- ATHENA
-- Mapping the category data to each video according its category id and selecting relevant columns
SELECT DISTINCT a.video_id, a.title, a.channel_title, b.snippet_title as category, a.tags, a.views, a.likes as like_count, a.comment_count, a.region, a.trending_date
FROM "db_youtube_cleaned"."raw_statistics" as a
INNER JOIN "db_youtube_cleaned"."cleaned_statistics_reference_data" as b
ON a.category_id = cast(b.id as int);