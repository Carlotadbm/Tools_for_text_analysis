# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE) 

#europarl_pt
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

europarl_pt <- read_delim(file.path(.get_course_path(), "Tools_for_text_analysis", "16._Co-occurrences_and_graphs", "europarl_pt_5files.csv"), delim = "\t")
europarl_pt <- europarl_pt %>% 
  mutate(fragment = ceiling(seq_along(source)/10))


# Portuguesestopwords
pt_sw <- get_stopwords("pt")

# europarl_pt_bigram_sep (europarl_pt separated in brigrams)
europarl_pt_bigram_sep <- europarl_pt %>%
  unnest_tokens(bigram, content, token = "ngrams", n = 2) %>% 
  separate(bigram, into = c("word1", "word2"), sep = " ") %>% 
  filter(!word1 %in% pt_sw$word,
         !word2 %in% pt_sw$word)




