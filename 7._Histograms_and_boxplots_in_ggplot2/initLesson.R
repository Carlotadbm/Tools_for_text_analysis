# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.
swirl_options(swirl_logging = TRUE) 

library(tidyverse)

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

verne_text <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "7._Histograms_and_boxplots_in_ggplot2", "verne_text_chapters.csv"), delim = "\t")
