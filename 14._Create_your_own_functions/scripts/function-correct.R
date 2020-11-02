#Copy the code that creates `read_europarl()` below.

read_europarl <- function(file){
  read_delim(file, delim = "\t", col_names = "text") %>% 
    mutate(type = str_detect(text, "^<")) %>% 
    mutate(type = ifelse(type == TRUE, "tag", "content")) %>% 
    filter(!type == lag(type, default = "content")) %>% 
    mutate(index = seq_along(text)) %>% 
    mutate(index = ceiling(index/2)) %>% 
    spread(type, text)  
}