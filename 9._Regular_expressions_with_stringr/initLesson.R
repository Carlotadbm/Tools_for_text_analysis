# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE) 

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

verne <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "9._Regular_expressions_with_stringr", "verne_text_chapters.csv"), delim = "\t") %>% 
  unnest_tokens(sentences, text, token = "sentences", to_lower = FALSE)
quijote <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "9._Regular_expressions_with_stringr", "quijote_freq.csv"), delim = "\t") 
