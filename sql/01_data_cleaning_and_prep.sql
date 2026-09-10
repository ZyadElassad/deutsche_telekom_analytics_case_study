-- Purpose: Clean, type-cast, and standardize raw broadband data.

CREATE OR REPLACE TABLE `telekom_infrastructure.broadband_cleaned` AS
SELECT 
    -- 1. Standardize Identifiers
    TRIM(CAST(AGS AS STRING)) AS ags_code,
    TRIM(Name) AS municipality_name,
    TRIM(Verwaltungsebene) AS admin_level,
    
    -- 2. Type Safety & Missing Value Hygiene
    COALESCE(SAFE_CAST(v_16Mbits AS FLOAT64), 0.0) AS cov_16_mbit,
    COALESCE(SAFE_CAST(v_50Mbits AS FLOAT64), 0.0) AS cov_50_mbit,
    COALESCE(SAFE_CAST(v_100Mbits AS FLOAT64), 0.0) AS cov_100_mbit,
    COALESCE(SAFE_CAST(v_1000Mbits AS FLOAT64), 0.0) AS cov_gigabit
    
FROM `telekom_infrastructure.broadband_raw`
-- 3. Null Filtering
WHERE AGS IS NOT NULL;
