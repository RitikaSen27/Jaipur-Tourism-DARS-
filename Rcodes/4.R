# 1. Load libraries
library(ggplot2)
library(dplyr)

# 2. Load the file
df_hotels <- read.csv("C:/Users/ritik/OneDrive/Desktop/r lab/Hotels (1).csv")

# 3. Clean the data
df_clean <- df_hotels %>%
  mutate(
    Price = as.numeric(PRICE_RUPEES)
  ) %>%
  filter(!is.na(Price))

# 4. Generate the Histogram for Price Distribution
ggplot(df_clean, aes(x = Price)) +
  # Use bins = 30 or calculate binwidth based on your price range
  geom_histogram(fill = "steelblue", color = "white", bins = 30) +
  # Add a vertical line for the average price
  geom_vline(aes(xintercept = mean(Price)), color = "red", linetype = "dashed", size = 1) +
  # Labels and Theme
  labs(
    title = "Distribution of Hotel Prices in Jaipur",
    subtitle = "Red dashed line indicates the Average Price",
    x = "Price (Rupees)",
    y = "Number of Hotels (Frequency)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14)
  )