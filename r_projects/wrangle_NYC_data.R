# read Film_Permits.csv data 
library(tidyverse)
wcon <- read.csv("data/wcon.csv")

# Wrangle: prepare the table, so it can be used for further analysis
wcon <- wcon %>% mutate(Gal_p_M = Per_Capita * 10^5)

# "save" comand = saves objects into rda (R Data) file. it is recommended to use .rda sufix on files saving R objects
save(wcon, file = "rda/wcon.rda")