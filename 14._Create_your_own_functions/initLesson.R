# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE)

answer_function <- function(file){
  read_delim(file, delim = "\t", col_names = "text") %>% 
    mutate(type = str_detect(text, "^<")) %>% 
    mutate(type = ifelse(type == TRUE, "tag", "content")) %>% 
    filter(!type == lag(type)) %>% 
    mutate(index = seq_along(text)) %>% 
    mutate(index = ceiling(index/2)) %>% 
    spread(type, text)  
}