# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE) 

library(tidyverse)
library(tidytext)

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

verne_text <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "8._Bar_charts_in_ggplot2", "verne_text_chapters.csv"), delim = "\t")
fr_sw_own <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "8._Bar_charts_in_ggplot2", "fr_sw_own.csv"), delim = "\t")
