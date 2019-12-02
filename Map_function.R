# Map functions in Purr

library(tidyverse)

my_list <- list(
  c(1,2,6),
  c(4,7,1),
  c(9,1,5)
)

my_list

# Find the mean of each element

my_list[[1]] %>% mean()
my_list[[2]] %>% mean()
my_list[[3]] %>% mean()

# Basic idea of a map

my_list %>% map(mean)

# Specific mapping

my_list %>% map_dbl(mean)

# Anonymous function

my_list %>% map(~ . * 2)

# Other maps

my_list %>% map(is.numeric)
my_list %>% map_lgl(is.numeric)
