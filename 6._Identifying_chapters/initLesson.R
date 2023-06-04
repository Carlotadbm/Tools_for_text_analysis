# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.
swirl_options(swirl_logging = TRUE) 

library(tidyverse)
library(tidytext)


verne_url <- "https://www.gutenberg.org/cache/epub/800/pg800.txt"
verne_file <- read_file(verne_url)

verne_text <- verne_file %>% 
  str_replace_all("(\r\n){2,}", "\t") %>% 
  str_replace_all("\r\n", " ") %>% 
  str_replace_all("\t", "\r\n") %>% 
  read_lines(skip = 11) %>% 
  as_tibble() %>%
  rename(text = value) %>% 
  filter(text != "") %>% 
  mutate(paragraph = seq_along(text))

