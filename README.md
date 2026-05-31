# Tourism Footfall Analysis in Jaipur using R

## Project Overview

This repository contains the R scripts, visualizations, and statistical analyses developed for a Tourism Footfall Analysis project focused on Jaipur, Rajasthan. The project explores tourism trends, hotel pricing patterns, customer engagement, infrastructure investment, and the geographical distribution of hotels using data analytics and visualization techniques in R.

Through Exploratory Data Analysis (EDA), the project aims to uncover meaningful insights into Jaipur's tourism ecosystem and hospitality sector.

---

## Repository Contents

This repository includes:

- R scripts used for data cleaning, processing, analysis, and visualization.
- Seven analytical outputs, including charts and statistical summaries.
- Tourism and hotel data analysis reports.
- Documentation of datasets and methodologies used in the project.

---

## Objectives

- Analyze tourism growth trends in Jaipur.
- Study the impact of infrastructure investment on tourist arrivals.
- Examine hotel pricing patterns and customer demand.
- Compare pricing across different hotel categories.
- Understand the distribution of hotel prices and popularity.
- Identify geographical clusters of hotels in Jaipur.
- Generate descriptive statistical summaries of tourism and hotel datasets.
- Derive actionable insights through data visualization and exploratory data analysis.

---

## Datasets Used

### 1. Jaipur Attractions and Hotels Dataset
**Source:** Kaggle  
**Link:** https://www.kaggle.com/datasets/ishikajohari/jaipur-attractions-and-hotels

### 2. Tourism Dataset
**Source:** Google Drive  
**Link:** https://share.google/kCdxRk5cMI2RlrmVu

> **Note:** The datasets are not included in this repository. Please download them from the above sources before running the R scripts.

---

## Repository Structure

```text
├── R Codes/
│   ├── R scripts for data preprocessing
│   ├── Data analysis scripts
│   └── Visualization scripts
│
├── Charts/
│   ├── Infrastructure Spending vs Domestic Tourist Footfall
│   ├── Hotel Pricing vs Market Demand
│   ├── Geographical Heatmap of Hotels
│   ├── Distribution of Hotel Prices
│   ├── Distribution of Hotel Popularity
│   ├── Price Distribution by Hotel Category
│   └── Descriptive Statistical Analysis Output
│
└── README.md
```

---

## Analysis and Visualizations

### 1. Infrastructure Spending vs Domestic Tourist Footfall
- Comparative analysis of infrastructure investment and domestic tourist arrivals.
- Uses a combination of bar and line charts to identify tourism growth patterns.

### 2. Hotel Pricing vs Market Demand
- Scatter plot examining the relationship between hotel pricing and customer reviews.
- Includes a trend line to study demand behavior.

### 3. Geographical Heatmap of Hotels in Jaipur
- Spatial visualization of hotel locations using geographic coordinates.
- Identifies major accommodation hubs and tourism zones.

### 4. Distribution of Hotel Prices
- Histogram showing the frequency distribution of hotel prices.
- Highlights common pricing ranges and luxury outliers.

### 5. Distribution of Hotel Popularity (Reviews)
- Histogram displaying the distribution of customer reviews.
- Helps assess hotel popularity and customer engagement.

### 6. Price Distribution by Hotel Category
- Box plot comparing budget, mid-range, and luxury hotel segments.
- Examines pricing consistency, variation, and outliers within each category.

### 7. Descriptive Statistical Analysis
Statistical summaries generated for:

#### Hotel Dataset
- Total number of hotels
- Mean hotel price
- Median hotel price
- Minimum and maximum prices
- Standard deviation of hotel prices
- Total customer reviews captured

#### Macro-Economic Dataset
- Average annual growth rate
- Peak infrastructure investment
- Average infrastructure investment
- Total infrastructure investment over the study period

---

## Key Findings

- Tourism growth generally increases with infrastructure development.
- Tourist arrivals show significant fluctuations during major economic and external events.
- Most hotels belong to the budget and mid-range pricing categories.
- Luxury hotels form a small proportion of the market but contribute significantly to price variation.
- Customer reviews are unevenly distributed, with a few hotels receiving the majority of engagement.
- Hotels are concentrated around major tourist attractions and commercial areas of Jaipur.

---

## Tools and Technologies Used

- R Programming Language
- RStudio

### R Libraries

```r
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)
```

Additional libraries may be used depending on specific analysis scripts.

---

## How to Run the Project

1. Download the datasets from the provided links.
2. Place the datasets in your working directory.
3. Open the desired R script in RStudio or any R environment.
4. Install required packages if necessary:

```r
install.packages(c("ggplot2", "dplyr", "tidyr", "readr"))
```

5. Execute the scripts to reproduce the analyses and visualizations.

---

## Academic Purpose

This repository was developed as part of an academic project on tourism footfall analysis in Jaipur. The project demonstrates the application of R programming for data preprocessing, exploratory data analysis, statistical summarization, and visualization of tourism and hospitality data.

---

## Authors
Debargha Chakraborty-2462004
Aritra Majumdar-2462022
Ritika Sen-2462020
Soumyajyoti Sen-2462003
