# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE)

#read file kafi
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

kafi <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "21._Maps_in_ggplot2_III._Shapefiles", "Kafi_chdt.csv"), delim = "\t")

