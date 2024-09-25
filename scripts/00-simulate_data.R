#### Preamble ####
# Purpose: Simulates the dataset of Mental Health 
# Author: Gauravpreet Thind
# Date: September 22, 2024
# Contact: gauravpreet.thind@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Simulate Data ####
set.seed(1234)

observations = 100
years = 10

simulated_data = 
  tibble(
    year = rep(c(1:number_of_years + 2013), 2),
    division = rep(c(1:number_of_years),2),
    counts =  runif(n = number_of_years * 2, min = 0, max = 100),
    type = c(rep("MHA",number_of_years),rep("ALL",number_of_years))
  )


simulated_data|>
  ggplot(aes(x = year, y = counts, color = type)) +
  geom_point() +
  theme_minimal() +
  labs(x = "Year", y = "Number of Reports and Arrests", color = "Type") +
  scale_color_brewer(palette = "Set1") +
  theme(legend.position = "bottom")

simulated_data|>
  ggplot(aes(x = division, y = counts, color = type)) +
  geom_point() +
  theme_minimal() +
  labs(x = "Division", y = "Number of Reports and Arrests", color = "Type") +
  scale_color_brewer(palette = "Set1") +
  theme(legend.position = "bottom")

