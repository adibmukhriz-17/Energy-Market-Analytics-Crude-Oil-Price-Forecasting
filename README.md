# Energy-Market-Analytics-Crude-Oil-Price-Forecasting
End-to-end energy analytics independent project combining time series forecasting and Power BI dashboards to analyze crude oil market trends and insights.

# Energy Market Analytics & Crude Oil Price Forecasting

## Project Overview
This independent data analytics project explores historical crude oil price movements and energy market trends using official market data. The goal is to analyze long-term price behaviour, identify volatility patterns, and develop forecasting models to support data-driven business insights in the energy sector.

## Business Problem
Energy companies, analysts, and decision-makers rely on accurate market insights to understand price fluctuations, anticipate trends, and make informed operational or investment decisions.

This project aims to answer:

- How have crude oil prices evolved over time?
- Are there identifiable volatility or trend patterns?
- Can historical price data be used to forecast short-term market movements?

## Dataset
Primary dataset sourced from the **U.S. Energy Information Administration (EIA)**:

- Dataset: **WTI Crude Oil Spot Price (Cushing, Oklahoma)**
- Frequency: **Monthly**
- Coverage: **1986–Present**
- Source: https://www.eia.gov/dnav/pet/PET_PRI_SPT_S1_M.htm

## Planned Tools & Technologies
- Python (data cleaning & preprocessing)
- R (time series modelling & forecasting)
- Power BI (interactive dashboard)
- GitHub (project documentation & version control)

## Planned Analysis
- Data cleaning & preprocessing
- Exploratory data analysis (trend, seasonality, volatility)
- Moving averages and rolling trend analysis
- Time series forecasting (ARIMA / ETS / benchmark models)
- Business insights & recommendations
- Interactive dashboard development

# Crude Oil Price Data Cleaning and Preprocessing (Python)

This notebook prepares monthly WTI and Brent crude oil price data for exploratory analysis and time series forecasting.

"Crude_Oil_data_preprocessing_ipynb"

The preprocessing steps include:
- inspecting the raw dataset "RWTC (USA crude oil price benchmark and RBRTE (Europe/Global crude oil price benchmark)"
- identifying missing and duplicate values "16 missing value from RBRTE since they start later than RWTC"
- removing non-data rows
- renaming variables
- converting data types
- checking chronological order
- verifying monthly time-series continuity

## Project Status
🚧 In Progress — Data preprocessing completed, EDA next.
