#Create line plot
plot <- comparison %>% 
  mutate(token = reorder(token, token_id)) %>% 
  ggplot(aes(x = token, y = upos, group = model, linetype = model, colour = model)) +
  geom_line() + 
  scale_x_discrete(guide = guide_axis(n.dodge = 2)) 

#print it
plot(plot)