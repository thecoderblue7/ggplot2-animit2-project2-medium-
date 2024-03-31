library(ggplot2)
library(animint2)

set.seed(123)
n <- 100
x <- rnorm(n)
y <- rnorm(n)

# Create ggplot object for initial frame
p_initial <- ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
  geom_point(color = "blue") +
  xlim(-3, 3) +
  ylim(-3, 3) +
  ggtitle("Initial Frame")

# Create ggplot object for final frame
p_final <- ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
  geom_point(color = "red") +
  xlim(-3, 3) +
  ylim(-3, 3) +
  ggtitle("Final Frame")

plot_list <- list(
  "InitialFrame" = p_initial,
  "FinalFrame" = p_final
)

animation_params <- list(
  duration = 2000,  # Animation duration in milliseconds
  delay = 500,      # Delay between frames in milliseconds
  loop = TRUE       # Loop animation
)

# Step 6: Generate Animint Output (Alternative Approach)
animint_output <- animint(plot_list, animation_params)

library(ggplot2)
install.packages("htmlwidgets")

library(htmlwidgets)

# Create ggplot object
gg <- ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point()

# Save ggplot as HTML file
out_file <- "example_output/example_plot.html"
saveWidget(gg, out_file)



# Step 7: Display Animation
# Open the generated HTML file in a web browser to view the animation
# The HTML file will be located in the specified output directory ('example_output')




