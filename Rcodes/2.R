# 1. Load libraries
library(ggplot2)
library(dplyr)

# 2. Load the file using your specific path
# Ensure you use forward slashes / or double backslashes \\
df_hotels <- read.csv("C:/Users/ritik/OneDrive/Desktop/r lab/Hotels (1).csv")

# 3. Clean the data
df_clean <- df_hotels %>%
  mutate(
    # Ensure Reviews and Price are numeric
    Reviews = as.numeric(NUMBER_OF_REVIEWS),
    Price = as.numeric(PRICE_RUPEES)
  ) %>%
  filter(!is.na(Reviews) & !is.na(Price))

# 4. Generate the "Value vs Demand" Plot
ggplot(df_clean, aes(x = Reviews, y = Price)) +
  geom_point(aes(size = Price), color = "darkgreen", alpha = 0.5) +
  geom_smooth(method = "lm", color = "red", linetype = "dashed") +
  # Label the most reviewed hotel
  geom_text(aes(label = ifelse(Reviews > quantile(Reviews, 0.95), HOTEL, "")), 
            vjust = -1, size = 3, check_overlap = TRUE) +
  labs(
    title = "Jaipur Hotels: Pricing vs. Market Demand",
    subtitle = "Analysis of Price per Night vs. Number of Reviews",
    x = "Number of Reviews (Popularity)",
    y = "Price (Rupees)",
    size = "Price Scale"
  ) +
  theme_minimal()