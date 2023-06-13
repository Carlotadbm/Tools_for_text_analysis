plot <- mock_verbs %>% 
  count(Verb, De_complement) %>% 
  ggplot(aes(x = De_complement, y = n)) +
  geom_col() + 
  labs(title = "Presence of de-complements by verb", 
       x = "Presence of de-complement", y = "Occurrences") +
  theme_light() +
  facet_wrap(~Verb, scales = "free")

plot(plot)