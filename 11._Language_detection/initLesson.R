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

wa <- read_lines(file.path(.get_course_path(), "Tools_for_text_analysis", "11._Language_detection", "WhatsApp_multilingual.txt"))
correct_1 <- c("german", "spanish", "spanish", "spanish", "german", "german", "romanian", "romanian", "german", "spanish", "german", "german", "german", "romanian", "spanish", "spanish", NA, "english", "german", "romanian", "english", "portuguese", "german", "german", "german", "romanian", "german", "romanian", "english", "german", "french", "german", "italian", "italian", "romanian", "polish", "german", "romanian", "portuguese", "ast", "italian", "mixed", "german", "german", "german", "romanian", "mixed", "spanish", "italian", "spanish", "romanian", "italian", "french", "spanish", "spanish", "romanian")
correct_2_3 <- c("de", "es", "es", "es", "de", "de", "ro", "ro", "de", "es", "de", "de", "de", "ro", "es", "es", NA, "en", "de", "ro", "en", "pt", "de", "de", "de", "ro", "de", "ro", "en", "de", "fr", "de", "it", "it", "ro", "pl", "de", "ro", "pt", "ast", "it", "mixed", "de", "de", "de", "ro", "mixed", "es", "it", "es", "ro", "it", "fr", "es", "es", "ro")
correct_4 <- c("deu", "spa", "spa", "spa", "deu", "deu", "ron", "ron", "deu", "spa", "deu", "deu", "deu", "ron", "spa", "spa", NA, "eng", "deu", "ron", "eng", "por", "deu", "deu", "deu", "ron", "deu", "ron", "eng", "deu", "fra", "deu", "ita", "ita", "ron", "pol", "deu", "ron", "por", "ast", "ita", "mixed", "deu", "deu", "deu", "ron", "mixed", "spa", "ita", "spa", "ron", "ita", "fra", "spa", "spa", "ron")

