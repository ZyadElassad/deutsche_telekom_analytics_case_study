# Deutsche Telekom Fiber-Optic Infrastructure & Deployment Case Study

## Project Overview
An end-to-end data analytics portfolio project evaluating gigabit vs. standard broadband coverage gaps across German municipal tiers. This project identifies critical regional bottlenecks and establishes an automated capital-allocation priority matrix for civil engineering deployment.

## Tech Stack
* **Database / Querying:** Google BigQuery / SQL (Feature engineering & regional scoring)
* **Visualization & BI:** Power BI Desktop (Choropleth mapping, dual-axis progression charts, matrix rollouts)

## Key Deliverables & Visualizations
1. **Executive Choropleth Map (`2-Land`):** High-contrast visualization mapping coverage density across federal states.
2. **Progression Bottleneck Chart:** Dual-axis analysis contrasting national baselines (`1-Bund`) against local municipal realities (`4-Gemeinde`).
3. **Rollout Matrix:** Prioritized tactical hit-list targeting municipalities with a perfect 100.00 priority score for immediate infrastructure investment.

## Repository Structure
* `sql/` — Contains the SQL queries used for data extraction and custom feature engineering (including the `regional_priority_score`).
* `visuals/` — Contains executive screenshots of the final Power BI dashboards used in the portfolio case study.
