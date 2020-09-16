# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

swirl_options(swirl_logging = TRUE)

library(tidyverse)
quijote <- "http://corpus.rae.es/frecCORDE/quijote1.TXT"
quijote <- read_lines(quijote) 
Encoding(quijote) <- "latin1"
quijote <- enc2utf8(quijote)