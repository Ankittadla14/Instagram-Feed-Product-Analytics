# Instagram Feed Engagement Optimization (Product Analytics)

## Overview
This repository demonstrates a **Meta-style Product Analytics A/B experiment** evaluating whether a feed-ranking treatment improves engagement and session quality **without harming retention or guardrail metrics**.

> **Data note:** The dataset is **synthetic** and is **generated automatically by the notebook** at runtime (so the repo stays lightweight and GitHub-friendly).

---

## Quick Start
1. Open `notebooks/ab_test_analysis_autogen.ipynb`
2. Run all cells (this will generate the synthetic data in-memory and run the full analysis)

### Optional (Save Data Locally)
If you want local CSVs for Power BI / Tableau, you can add a small cell to export the dataframes:
```python
users.to_csv("users.csv", index=False)
sessions.to_csv("sessions.csv", index=False)
engagements.to_csv("engagements.csv", index=False)
guardrails.to_csv("guardrails.csv", index=False)
retention.to_csv("retention.csv", index=False)
```
(Do **not** commit these large CSVs to GitHub.)

---

## Experiment Design
- **Control:** Existing feed ranking strategy  
- **Treatment:** Relevance-optimized feed ranking  
- **Split:** 50/50 randomized assignment  
- **Duration:** 14 days  
- **Users:** ~120k (configurable in notebook)  

---

## Metrics
**Primary:** Engagement rate, Avg session duration  
**Secondary:** Scroll depth  
**Guardrails:** Unfollow rate, Session abandonment rate  
**Retention:** D1 and D7

---

## Key Results (example run)
- Engagement lift: **~16.9%**
- Session duration lift: **~10.1%**
- Guardrails: **no regression**
- D7 retention: **significant** (p ≈ 0.048)

---

## Repo Structure
```
instagram-feed-product-analytics/
├── notebooks/
│   └── ab_test_analysis_autogen.ipynb
├── sql/
│   └── analysis_snippets.sql
└── README.md
```

---

## Author
**Ankit Tadla**  
MPS Data Science & Applications, University at Buffalo
