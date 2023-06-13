plot <- mock_verbs %>% 
  count(Verb, De_complement, Reflexive_pronoun) %>% 
  ggplot(aes(x = De_complement, y = n, fill = Reflexive_pronoun)) +
  geom_col() +
  facet_wrap(~Verb, scales = "free") +
  scale_fill_manual(values = wes_palette("Darjeeling1")[c(5, 2)])

plot(plot)