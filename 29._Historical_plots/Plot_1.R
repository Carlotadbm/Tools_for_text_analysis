mock_clean <- mock_verbs %>% 
  mutate(period = cut_interval(Year, 27, labels = seq(from = 1386, to = 1975, by = 22)))
all_periods <- seq(from = 1386, to = 1975, by = 22)
actual_periods <- mock_clean %>% 
  distinct(period)
missing_periods <- all_periods %>% 
  as_tibble_col(column_name = "period") %>% 
  mutate(period = as.factor(period)) %>% 
  anti_join(actual_periods) %>% 
  add_column(no = 0, yes = 0)

plot <- mock_clean %>% 
  count(period, Reflexive_pronoun) %>% 
  pivot_wider(names_from = Reflexive_pronoun, values_from = n, values_fill = 0) %>% 
  add_row(missing_periods) %>% 
  mutate(total = no + yes, 
         percentage = yes/total*100) %>% 
  ggplot(aes(x = period, y = percentage, group = 1)) +
  geom_line() +
  geom_point() +
  geom_text(aes(label = total), nudge_y = 10) +
  labs(y = "Presence of the reflexive marker (%)")

plot(plot)