# Crude oil Price EDA and Forecasting

crude <- read.csv("C:/Users/user/Downloads/crude_oil_clean.csv")
crude

# checking structure of dataset
str(crude)

crude$Date <- as.Date(crude$Date, format = "%Y-%m-%d")
crude$WTI_price <- as.numeric(crude$WTI_price)
crude$Brent_price <- as.numeric(crude$Brent_price)

str(crude)
crude

# Summary of dataset
summary(crude)

wti_ts <- ts(crude$WTI_price, start = c(1986, 1), frequency = 12)
brent_ts <- ts(na.omit(crude$Brent_price), start = c(1987, 5), frequency = 12)

summary(wti_ts)
summary(brent_ts)

# Standard deviation of crude oil prices
sd(wti_ts)
sd(brent_ts)

library(zoo)

as.yearmon(time(wti_ts)[which.min(wti_ts)])
as.yearmon(time(wti_ts)[which.max(wti_ts)])

as.yearmon(time(brent_ts)[which.min(brent_ts)])
as.yearmon(time(brent_ts)[which.max(brent_ts)])

# plotting historical prices

library(ggplot2)
class(crude$Date)

ggplot(crude, aes(x = Date, y = WTI_price)) +
  geom_line() +
  labs(
    title = "Monthly Historical WTI Crude Oil Price",
    subtitle = "Cushing, Oklahoma (Jan 1986 - July 2026)",
    x = "Year",
    y = "Price (USD per barrel)"
  ) +
  theme_minimal()

ggplot(crude, aes(x = Date, y = Brent_price)) +
  geom_line() +
  labs(
    title = "Monthly Historical WTI Crude Oil Price",
    subtitle = "Brent 'Europe/Global' (May 1987 - July 2026)",
    x = "Year",
    y = "Price (USD per barrel)"
  ) +
  theme_minimal()

ggplot(crude, aes(x = Date)) +
  geom_line(aes(y = WTI_price, colour = "WTI")) +
  geom_line(aes(y = Brent_price, colour = "Brent")) +
  labs(
    title = "WTI vs Brent Monthly Historical Crude Oil Prices",
    subtitle = "1986 - 2026",
    x = "Year",
    y = "Price (USD per Barrel)",
    colour = "Benchmark"
  ) +
  theme_minimal()
