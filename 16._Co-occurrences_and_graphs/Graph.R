#Plotting the correlation in a barplot.
graph <- europarl_pt %>%
  unnest_tokens(word, content) %>% 
  anti_join(pt_sw) %>% 
  group_by(word) %>%
  filter(n() >= 10) %>% 
  ungroup() %>% 
  pairwise_cor(word, fragment, sort = TRUE) %>%
  filter(correlation >= .7) %>% 
  graph_from_data_frame() %>% 
  ggraph(layout = "nicely") + 
  geom_node_text(aes(label = name), repel = TRUE) +
  geom_edge_link(aes(edge_alpha = correlation)) + 
  geom_node_point(color = "lightgray", size = 1) +
  theme_void()

plot(graph)
