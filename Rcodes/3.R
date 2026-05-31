# 1. Load libraries
library(ggplot2)
library(dplyr)

# 2. Load your file
df_hotels <- read.csv("C:/Users/ritik/OneDrive/Desktop/r lab/Hotels (1).csv")

# 3. Create the Heatmap
ggplot(df_hotels, aes(x = Lng, y = Lat)) +
  # Create the density 'heat' layers
  stat_density_2d(aes(fill = ..level..), geom = "polygon", alpha = 0.8) +
  # Use a warm color scale (Yellow to Red)
  scale_fill_distiller(palette = "YlOrRd", direction = 1) +
  # Add the individual hotel points on top in black for precision
  geom_point(color = "black", size = 0.5, alpha = 0.3) +
  # Labels and Theme
  labs(
    title = "Geographical Heatmap of Hotels in Jaipur",
    subtitle = "Darker red areas indicate high density of accommodation options",
    x = "Longitude",
    y = "Latitude",
    fill = "Density Level"
  ) +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(face = "bold", size = 14)
  )