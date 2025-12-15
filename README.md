# Instagram Feed Engagement Optimization (Product Analytics)

## Overview
This project demonstrates a **Meta-style Product Analytics A/B experiment** designed to evaluate whether a modified feed ranking strategy improves user engagement and session quality **without negatively impacting retention or trust-related guardrails**.

The analysis mirrors how Product Data Scientists at Meta (Facebook, Instagram, WhatsApp) evaluate product changes using **metrics, experimentation, SQL, and statistical rigor**.

> **Note:** All data used in this project is **synthetic** and generated to closely resemble real-world social media product analytics data.

---

## Business Problem
Feed ranking directly influences:
- User engagement
- Session depth and duration
- Long-term retention
- Creator ecosystem health

**Primary Question:**  
Can a relevance-based feed ranking strategy improve engagement while maintaining retention and guardrail metrics?

---

## Experiment Design

- **Type:** Randomized A/B Experiment  
- **Groups:**
  - **Control:** Existing feed ranking strategy  
  - **Treatment:** Relevance-optimized feed ranking  
- **Split:** 50% Control / 50% Treatment  
- **Duration:** 14 days  
- **Users:** ~120,000  
- **Sessions Analyzed:** ~600,000  

---

## Metrics

### Primary Metrics
- **Engagement Rate** = (Likes + Comments + Shares) / Impressions
- **Average Session Duration (minutes)**

### Secondary Metrics
- **Scroll Depth**

### Guardrail Metrics
- **Unfollow Rate**
- **Session Abandonment Rate**

### Retention Metrics
- **Day-1 Retention**
- **Day-7 Retention**

---

## Data Tables

| Table | Description |
|-----|------------|
| users | User demographics and experiment assignment |
| sessions | Session-level activity and duration |
| engagements | Impressions and engagement actions |
| guardrails | Trust and negative-behavior signals |
| retention | Day-1 and Day-7 user retention flags |

---

## Analysis Workflow

1. Generate synthetic product data
2. Join session-level datasets
3. Compute product metrics by experiment group
4. Measure relative lift (treatment vs control)
5. Perform statistical tests:
   - Welch’s t-test (session duration)
   - Two-proportion z-test (retention)
6. Validate guardrail stability
7. Formulate product recommendations

---

## Results & Impact

### Key Results

**Primary Metrics**
- **Engagement Rate:** 4.80% → 5.61% (**~16.9% lift**)
- **Avg Session Duration:** 6.97 min → 7.68 min (**~10.1% lift**)  
  - Statistically significant (Welch’s t-test, **p < 0.001**)

**Secondary Metrics**
- **Scroll Depth:** **~5.9% increase**

**Guardrails**
- **Unfollow Rate:** −3.1%
- **Abandonment Rate:** −0.7%
- **No guardrail regression observed**

**Retention**
- **Day-7 retention improvement statistically significant**  
  - Two-proportion z-test: **p ≈ 0.048**

---

## Interpretation
The treatment feed ranking strategy resulted in **meaningful gains in engagement and session quality** while maintaining user trust and short-term retention. Results indicate that relevance-driven feed ranking can increase interaction depth without introducing negative user behaviors.

---

## Product Recommendation
- Roll out the treatment feed ranking **incrementally**
- Monitor **long-term retention (D30+)**
- Segment analysis by **device type and geography**
- Run follow-up experiments on **content diversity vs relevance trade-offs**

---

## Tools & Technologies
- **Python:** Pandas, NumPy, SciPy, Matplotlib
- **SQL:** Metric aggregation & funnel analysis
- **Jupyter Notebook**
- **Product Analytics & Experimentation**

---

## Repository Structure

```
instagram-feed-product-analytics/
│
├── data/
│   ├── users.csv
│   ├── sessions.csv
│   ├── engagements.csv
│   ├── guardrails.csv
│   └── retention.csv
│
├── notebooks/
│   └── ab_test_analysis.ipynb
│
├── sql/
│   └── analysis_snippets.sql
│
└── README.md
```

---

## Why This Project
This project showcases:
- Product-focused thinking
- Ownership of metrics
- A/B experimentation
- Statistical rigor
- Business-driven recommendations

It is intentionally designed to reflect **real-world Product Data Science work at Meta**.

---

## Author
**Ankit Tadla**  
MPS Data Science & Applications, University at Buffalo  
Aspiring Product Data Scientist | Data Analyst | ML Engineer
