#Plotting the correlation in a barplot.
plot <- europarl_pt %>%
  unnest_tokens(word, content) %>% 
  anti_join(pt_sw) %>% 
  group_by(word) %>%
  filter(n() >= 10) %>% #gives the current group size
  ungroup() %>% 
  pairwise_cor(word, fragment, sort = TRUE) %>%
  filter(item1 == "febre") %>%
  group_by(item1) %>%
  top_n(10) %>%
  ungroup() %>%
  mutate(item2 = reorder(item2, correlation)) %>%
  ggplot(aes(item2, correlation)) +
  geom_bar(stat = "identity") +
  coord_flip()

plot(plot)
