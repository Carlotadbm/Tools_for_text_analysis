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

europarl_pt <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "15._N-grams_and_collocations", "europarl_pt_5files.csv"), delim = "\t")
