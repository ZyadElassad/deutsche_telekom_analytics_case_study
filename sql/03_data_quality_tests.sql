-- Purpose: Verify row counts and logical percentage boundaries.

-- Test 1: Total Row Count Verification
SELECT COUNT(*) AS total_rows 
FROM `telekom_infrastructure.broadband_cleaned`;

-- Test 2: Logical Bounds Testing (Detecting corrupt percentages)
SELECT 
    COUNTIF(cov_100_mbit < 0.0 OR cov_100_mbit > 100.0) AS invalid_100_mbit_rows,
    COUNTIF(cov_gigabit < 0.0 OR cov_gigabit > 100.0) AS invalid_gigabit_rows
FROM `telekom_infrastructure.broadband_cleaned`;
