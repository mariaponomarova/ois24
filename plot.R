# Install ggplot2 package if it's not already installed
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

# Load the ggplot2 library
library(ggplot2)

# Create a sample dataset
data <- mtcars

# Define the color palette
colors <- c("#FFC0CB", "#800020", "#FFDAB9")  # pink, burgundy, peach

# Create a density plot
# ggplot() initializes the ggplot object
# aes() specifies the aesthetic mappings, in this case, we map 'mpg' to the x-axis
# geom_density() adds the density plot layer
density_plot <- ggplot(data, aes(x = mpg, fill = factor(cyl))) + 
  geom_density(alpha = 0.7) +  # alpha specifies the transparency of the density fill
  scale_fill_manual(values = colors, name = "Cylinders") +  # manually set the fill colors
  labs(title = "Density Plot of Miles Per Gallon", # title of the plot
       x = "Miles Per Gallon", # label for the x-axis
       y = "Density") +        # label for the y-axis
  theme_minimal() +            # use a minimal theme for the plot
  theme(legend.position = "bottom") # place the legend at the bottom of the plot

# Print the plot
print(density_plot)
