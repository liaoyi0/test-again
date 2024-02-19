library(dplyr)
library(stringr)

# Read the Titanic dataset from a CSV file
data <- read.csv("titanic.csv")

# Extract person's titles from the name and create a new variable title
data <- data %>%
  mutate(
    Title = str_extract(Name, "Mr\\.|Mrs\\.|Miss\\.|Master\\.|Ms\\.|Mlle\\.|Mse\\."),
    Name = str_remove(Name, "Mr\\.|Mrs\\.|Miss\\.|Master\\.|Ms\\.|Mlle\\.|Mse\\.")
  )