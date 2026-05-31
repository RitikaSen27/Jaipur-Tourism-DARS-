# 1. Load libraries
library(ggplot2)
library(dplyr)

# 2. Create the dataset from your Macro-Economic table
econ_data <- data.frame(
  Year = c("2012-13", "2013-14", "2014-15", "2015-16", "2016-17", 
           "2017-18", "2018-19", "2019-20", "2020-21", "2021-22", "2022-23"),
  GSDP_Growth = c(4.54, 6.97, 7.29, 6.99, 5.93, 4.71, 4.94, 5.45, -1.82, 8.95, 7.81),
  Infra_Invest = c(5.2, 5.7, 6.1, 6.8, 7.3, 7.9, 8.4, 8.7, 2.1, 6.5, 9.3)
)

# 3. Plotting
ggplot(econ_data, aes(x = Year)) +
  # Bar Chart: Infrastructure Investment
  geom_bar(aes(y = Infra_Invest, fill = "Infrastructure Investment (Billion INR)"), 
           stat = "identity", alpha = 0.7) +
  
  # Line Chart: GSDP Growth
  geom_line(aes(y = GSDP_Growth, group = 1, color = "GSDP Growth (%)"), 
            size = 1.5) +
  geom_point(aes(y = GSDP_Growth, color = "GSDP Growth (%)"), size = 3) +
  
  # Secondary Axis Setup
  # Since both are on a similar scale, we use a 1:1 transformation
  scale_y_continuous(
    name = "Investment (Billion INR)",
    sec.axis = sec_axis(~., name = "GSDP Growth Rate (%)")
  ) +
  
  # Styling
  scale_fill_manual(values = c("Infrastructure Investment (Billion INR)" = "#AED6F1")) +
  scale_color_manual(values = c("GSDP Growth (%)" = "#C0392B")) +
  labs(
    title = "Macro Analysis: Govt Investment vs. Economic Growth",
    subtitle = "Proving the 9.3 Billion INR push to support the tourism boom",
    x = "Financial Year",
    fill = "Metric (Bars)",
    color = "Metric (Lines)"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "bottom",
    plot.title = element_text(face = "bold")
  )