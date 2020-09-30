# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE) 

library(tidyverse)
library(tidytext)
library(stopwords)

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

verne_words <- read_lines(file.path(.get_course_path(), "Tools_for_text_analysis", "5._Stopwords", "verne_text_clean.txt")) %>%
  as_tibble() %>%
  rename(text = value) %>% 
  filter(text != "") %>% 
  mutate(paragraph = seq_along(text)) %>%
  unnest_tokens(word, text) %>% 
  count(word, sort = T) 
