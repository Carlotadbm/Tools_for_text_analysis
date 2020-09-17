# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE)

library(tidyverse)
quixote <- "http://corpus.rae.es/frecCORDE/quijote1.TXT"
quixote <- read_lines(quixote) 
Encoding(quixote) <- "latin1"
quixote <- enc2utf8(quixote)