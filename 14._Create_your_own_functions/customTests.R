# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

### Testing script with function

test_read_europarl <- function() {
   # Most of this test is wrapped within `try()` so that any error in the
   # student's implementation of `my_mean` doesn't interrupt swirl.
   try({
      # The `get` function retrieves the student's definition of `my_mean` and
      # assigns it to the variable `func`.
      func <- get('read_europarl', globalenv())
      
      # The behavior of `func` is then tested by comparing it to the behavior of
      # `mean`.
      t1 <- identical(func("ep-02-12-17.txt"), answer_function("ep-02-12-17.txt"))
   }, silent = TRUE)
   
   # This value is returned at the result of the answer test.
   exists('t1') && isTRUE(t1)
}

### Check state

# Get the swirl state
getState <- function(){
   # Whenever swirl is running, its callback is at the top of its call stack.
   # Swirl's state, named e, is stored in the environment of the callback.
   environment(sys.function(1))$e
}

# Retrieve the log from swirl's state
getLog <- function(){
   getState()$log
}

submit_log <- function(){
   
   # Please edit the link below
   pre_fill_link <- "https://docs.google.com/forms/d/e/1FAIpQLSf-S-J9INd9FURLFbYneUh8W9ctheO_19x-Co9Q296gcbLCYA/viewform?usp=pp_url"
   
   # Do not edit the code below
   if(!grepl("=$", pre_fill_link)){
      pre_fill_link <- paste0(pre_fill_link, "=")
   }
   
   p <- function(x, p, f, l = length(x)){if(l < p){x <- c(x, rep(f, p - l))};x}
   
   temp <- tempfile()
   log_ <- getLog()
   nrow_ <- max(unlist(lapply(log_, length)))
   log_tbl <- data.frame(user = rep(log_$user, nrow_),
                         course_name = rep(log_$course_name, nrow_),
                         lesson_name = rep(log_$lesson_name, nrow_),
                         question_number = p(log_$question_number, nrow_, NA),
                         correct = p(log_$correct, nrow_, NA),
                         attempt = p(log_$attempt, nrow_, NA),
                         skipped = p(log_$skipped, nrow_, NA),
                         datetime = p(log_$datetime, nrow_, NA),
                         stringsAsFactors = FALSE)
   write.csv(log_tbl, file = temp, row.names = FALSE)
   encoded_log <- base64encode(temp)
   browseURL(paste0(pre_fill_link, encoded_log))
}

