library(dplyr)
library(tidyr)

# 1. Descriptive Analysis for Hotels (Micro Data)
df_hotels <- read.csv("C:/Users/ritik/OneDrive/Desktop/r lab/Hotels (1).csv")

hotel_stats <- df_hotels %>%
  summarise(
    Total_Hotels = n(),
    Mean_Price = mean(as.numeric(PRICE_RUPEES), na.rm = TRUE),
    Median_Price = median(as.numeric(PRICE_RUPEES), na.rm = TRUE),
    Min_Price = min(as.numeric(PRICE_RUPEES), na.rm = TRUE),
    Max_Price = max(as.numeric(PRICE_RUPEES), na.rm = TRUE),
    Std_Dev_Price = sd(as.numeric(PRICE_RUPEES), na.rm = TRUE),
    Total_Reviews_Captured = sum(as.numeric(NUMBER_OF_REVIEWS), na.rm = TRUE)
  )

print("--- Hotel Dataset Summary ---")
print(hotel_stats)

# 2. Descriptive Analysis for Macro-Economic Data
df_macro <- read.csv("C:/Users/ritik/OneDrive/Desktop/r lab/macro_economic_data.csv")

macro_stats <- df_macro %>%
  summarise(
    Avg_Annual_Growth = mean(GSDP_Growth_Percent),
    Peak_Investment = max(Infra_Investment_Billion_INR),
    Average_Investment = mean(Infra_Investment_Billion_INR),
    Total_Investment_10Yr = sum(Infra_Investment_Billion_INR)
  )

print("--- Macro-Economic Summary ---")
print(macro_stats)