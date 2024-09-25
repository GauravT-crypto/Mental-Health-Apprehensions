#### Preamble ####
# Purpose: Downloads the Mental Health data from Open Toronto
# Author: Gauravpreet Thind
# Date: September 22, 2024
# Contact: gauravpreet.thind@mail.utoronto.ca
# License: MIT
# Pre-requisites: 00-simulate_data.R
# Any other information needed? None

#### Workspace Setup ####
library(opendatatoronto)
library(tidyverse)


#### Download Data ####

# get package
package <- show_package("mental-health-apprehensions")
package

# get all resources for this package
resources <- list_package_resources("mental-health-apprehensions")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data

