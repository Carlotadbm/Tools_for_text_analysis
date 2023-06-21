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

diminutives <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "30._Historical_maps", "diminutives.csv"), delim = "\t")
spain <- st_read(file.path(.get_course_path(), "Tools_for_text_analysis", "30._Historical_maps", "ESP_adm2.shp"))
portugal <- st_read(file.path(.get_course_path(), "Tools_for_text_analysis", "30._Historical_maps", "PRT_adm1.shp"))



