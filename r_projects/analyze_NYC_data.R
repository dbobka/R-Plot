# analysis
load("rda/wcon.rda")

wcon %>% mutate(Year = reorder(Year, Gal_p_M)) %>%
  ggplot(aes(Year, Gal_p_M)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  coord_flip()
# it wil generate a file (a chart). You can save the file for use in a report/presentation with the comand ggsave that is part of the ggplot package. To be systematically organized, I will save plots at a new directory called "figs" that I will crete opening a terminal typing mkdir figs 
# the folowing line saves the file to figs directory
ggsave("images/wcon.png")
# if I want to copy the file to some other directory where I am developing a presentation, I can avoid using the mouse using the "cp" to copy the file in the terminal
# this is self contained analysis in one direcotory. 
# I will create a README.txt file describing what each of these files does and what it produces for the benefit of future reading 
