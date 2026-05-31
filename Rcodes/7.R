# 1. Load libraries
library(ggplot2)
library(dplyr)

# 2. Load the file
df_hotels <- read.csv("C:/Users/ritik/OneDrive/Desktop/r lab/Hotels (1).csv")

# 3. Create Star Categories based on Price (Proxy Analysis)
df_box <- df_hotels %>%
  mutate(
    Price = as.numeric(PRICE_RUPEES),
    Star_Category = case_when(
      Price < 1500 ~ "3-Star (Budget)",
      Price >= 1500 & Price <= 3000 ~ "4-Star (Mid-range)",
      Price > 3000 ~ "5-Star (Luxury)"
    )
  ) %>%
  filter(!is.na(Price))

# Ensure the categories are in the correct order for the plot
df_box$Star_Category <- factor(df_box$Star_Category, 
                               levels = c("3-Star (Budget)", "4-Star (Mid-range)", "5-Star (Luxury)"))

# 4. Generate the Box Plot
ggplot(df_box, aes(x = Star_Category, y = Price, fill = Star_Category)) +
  geom_boxplot(alpha = 0.7, outlier.colour = "red", outlier.shape = 8) +
  stat_summary(fun = mean, geom = "point", shape = 20, size = 3, color = "black") +
  scale_fill_manual(values = c("#FAD7A0", "#85C1E9", "#82E0AA")) +
  labs(
    title = "Price Distribution by Hotel Category (Jaipur)",
    subtitle = "Analysis of pricing consistency and market clusters",
    x = "Hotel Segment",
    y = "Price (Rupees)",
    fill = "Category"
  ) +
  theme_minimal() +
  theme(legend.position = "none", plot.title = element_text(face = "bold"))