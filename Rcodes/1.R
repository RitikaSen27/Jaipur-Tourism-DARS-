# Load Libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# 1. Macro Data from your Tables
macro_data <- data.frame(
  Year = 2012:2022,
  Domestic_M = c(28.61, 30.29, 33.08, 35.19, 41.49, 45.92, 50.23, 52.22, 15.12, 21.99, 108.33),
  Infra_Invest_Billion = c(5.2, 5.7, 6.1, 6.8, 7.3, 7.9, 8.4, 8.7, 2.1, 6.5, 9.3)
)

# 2. Creating a Dual-Axis Plot: Footfall vs. Investment
# We scale Investment to match the Millions of tourists for visual clarity
coeff <- 10  

ggplot(macro_data, aes(x = Year)) +
  # Bar chart for Infrastructure Investment
  geom_bar(aes(y = Infra_Invest_Billion * coeff), stat = "identity", fill = "steelblue", alpha = 0.6) +
  # Line chart for Domestic Footfall
  geom_line(aes(y = Domestic_M), color = "darkred", size = 1.5) +
  geom_point(aes(y = Domestic_M), color = "darkred", size = 3) +
  # Dual Axis Setup
  scale_y_continuous(
    name = "Domestic Tourists (Millions)",
    sec.axis = sec_axis(~./coeff, name = "Infra Investment (Billion INR)")
  ) +
  labs(
    title = "Macro Analysis: Infrastructure Spending vs. Domestic Footfall",
    subtitle = "Blue Bars: Investment | Red Line: Tourist Arrivals",
    x = "Year"
  ) +
  theme_minimal()