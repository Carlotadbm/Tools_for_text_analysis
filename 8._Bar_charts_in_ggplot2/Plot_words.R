plot <- verne_text %>%
  unnest_tokens(word, text) %>%
  anti_join(fr_sw_own) %>%
  count(word, sort = T) %>%
  filter(n >= 70) %>%
  mutate(word = fct_reorder(word, desc(n))) %>%
  ggplot(aes(x = word, y = n, fill = n)) + 
  geom_col() + 
  labs(title = "Most frequent words in Verne (80 Jours)") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  scale_fill_continuous(name="Word count")

plot(plot)