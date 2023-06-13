plot <- mock_verbs %>% 
  count(Verb, De_complement, Reflexive_pronoun) %>% 
  group_by(Verb, De_complement) %>% 
  mutate(Percentage = n/sum(n)*100) %>% 
  ggplot(aes(x = De_complement, y = Percentage, fill = Reflexive_pronoun)) +
  geom_col() +
  facet_wrap(~Verb) +
  scale_fill_manual(values = wes_palette("Darjeeling1")[c(5, 2)])

plot(plot)