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

correct_1 <- c("german", "spanish", "spanish", "spanish", "german", "german", "romanian", "romanian", "german", "spanish", "german", "german", "german", "romanian", "spanish", "spanish", NA, "english", "german", "romanian", "english", "portuguese", "german", "german", "german", "romanian", "german", "romanian", "english", "german", "french", "german", "italian", "italian", "romanian", "polish", "german", "romanian", "portuguese", "ast", "italian", "mixed", "german", "german", "german", "romanian", "mixed", "spanish", "italian", "spanish", "romanian", "italian", "french", "spanish", "spanish", "romanian")
wa <- read_lines(file.path(.get_course_path(), "Tools_for_text_analysis", "13._Cleaning_data_and_visualization_III", "WhatsApp_multilingual.txt"))

wa_df <- wa %>% 
  as_tibble() %>%
  slice(-c(1:2)) %>% 
  separate(value, into = c("time", "text"), sep = " - ") %>% 
  separate(text, into = c("user", "text"), sep = "Z: ") %>% 
  mutate(lang_1 = textcat(text),
         lang_2 = cld2::detect_language(text), 
         lang_3 = cld3::detect_language(text)) %>% 
  add_column(correct_1)
