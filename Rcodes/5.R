# 1. Load libraries
library(ggplot2)
library(dplyr)

# 2. Load the file
df_hotels <- read.csv("C:/Users/ritik/OneDrive/Desktop/r lab/Hotels (1).csv")

# 3. Clean and convert to numeric
df_clean <- df_hotels %>%
  mutate(
    Reviews = as.numeric(NUMBER_OF_REVIEWS)
  ) %>%
  filter(!is.na(Reviews))

# 4. Generate the Histogram for Popularity Distribution
ggplot(df_clean, aes(x = Reviews)) +
  geom_histogram(fill = "#e67e22", color = "white", bins = 30) +
  # Add a vertical line for the median (better than mean for skewed data)
  geom_vline(aes(xintercept = median(Reviews)), color = "black", linetype = "dashed", size = 1) +
  labs(
    title = "Distribution of Hotel Popularity (Reviews) in Jaipur",
    subtitle = "Black dashed line indicates the Median Review Count",
    x = "Number of Reviews",
    y = "Number of Hotels (Frequency)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14)
  )