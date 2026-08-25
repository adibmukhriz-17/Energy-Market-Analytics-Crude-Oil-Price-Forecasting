# Energy-Market-Analytics-Crude-Oil-Price-Forecasting
End-to-end energy analytics independent project combining time series forecasting and Power BI dashboards to analyze crude oil market trends and insights.

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

# Crude Oil Price EDA and Forecasting (R)

This script explores monthly WTI and Brent crude oil prices through descriptive statistics and historical time-series analysis, before proceeding to forecasting.

"Crude_Oil_EDA_Forecasting.R"

The EDA steps completed include:
- importing and validating the cleaned crude oil dataset
- converting variables into appropriate R data types
- creating monthly time-series objects for WTI and Brent
- calculating descriptive statistics for both crude oil benchmarks
- identifying historical minimum and maximum prices and their corresponding periods
- visualizing historical WTI and Brent price movements
- comparing WTI and Brent historical price trends

<img width="1132" height="915" alt="image" src="https://github.com/user-attachments/assets/f32021d9-020a-4ac5-a0f9-09bb5093bcec" />

Initial findings:
- WTI recorded an average monthly price of **$48.60/barrel**, ranging from **$11.35 to $133.88**
- Brent recorded an average monthly price of **$51.42/barrel**, ranging from **$9.82 to $132.72**
- both benchmarks reached their historical minimum in **December 1998**
- WTI reached its historical maximum in **June 2008**, while Brent peaked in **July 2008**
- WTI and Brent generally follow similar historical price movements, although periods of price divergence are visible
- price movements appear more volatile from the 2000s onward, motivating further volatility and time-series analysis

The next steps include:
- calculating monthly price changes and percentage returns
- analyzing moving averages and long-term trends
- measuring rolling price volatility
- analyzing the Brent-WTI price spread and correlation
- investigating seasonality and time-series decomposition
- testing stationarity and examining ACF/PACF
- creating training and testing datasets
- developing and comparing forecasting models (benchmark, ETS, and ARIMA)
- evaluating forecasting performance

## Project Status

🚧 In Progress — Initial EDA completed, price changes and returns analysis next.
