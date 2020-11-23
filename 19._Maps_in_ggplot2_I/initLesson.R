# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE) 

#read files TW
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

subjects <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "19._Maps_in_ggplot2_I", "subjects_TW_data.csv"), delim = "\t")
coords <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "19._Maps_in_ggplot2_I", "coordinates_TW.csv"), delim = "\t")
spanish_countries <- c("Argentina", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", 
                       "Honduras", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Uruguay", "Venezuela", "Spain", "Canary")
comparison <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "19._Maps_in_ggplot2_I", "comparison_country.csv"), delim = "\t")

