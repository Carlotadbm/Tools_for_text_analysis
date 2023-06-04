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

