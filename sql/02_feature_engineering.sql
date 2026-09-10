-- Purpose: Generate digital tiers, national benchmark comparisons, and regional priority scores.

WITH National_Average AS (
    SELECT cov_gigabit AS nat_gigabit
    FROM `telekom_infrastructure.broadband_cleaned`
    WHERE ags_code = '0' OR admin_level = '1-Bund'
)

SELECT 
    b.ags_code,
    b.municipality_name,
    b.admin_level,
    b.cov_100_mbit,
    b.cov_gigabit,
    
    -- 1. Digital Maturity Tier
    CASE 
        WHEN b.cov_gigabit >= 80.0 THEN 'Advanced'
        WHEN b.cov_gigabit >= 40.0 THEN 'Moderate'
        ELSE 'Lagging'
    END AS digital_tier,
    
    -- 2. Difference from National Benchmark
    ROUND(b.cov_gigabit - n.nat_gigabit, 2) AS diff_from_national_gigabit,
    
    -- 3. Regional Priority Score
    ROUND((100.0 - b.cov_gigabit) * (b.cov_100_mbit / 100.0), 2) AS regional_priority_score
    
FROM `telekom_infrastructure.broadband_cleaned` b
CROSS JOIN National_Average n
ORDER BY regional_priority_score DESC;
