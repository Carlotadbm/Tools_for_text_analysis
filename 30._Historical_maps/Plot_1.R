plot <- ggplot() +
  geom_sf(data = portugal, fill = "white") + 
  geom_sf(data = spain, fill = "white") +
  geom_point(data = diminutives,
             aes(x = Longitude,
                 y = Latitude,
                 shape = Sufijo),
             position = position_jitter(h = 0.1, w = 0.1)) +
  scale_shape_manual(values = 1:8) +
  coord_sf(xlim = c(-10, 5), ylim = c(35, 44)) +
  theme_bw() +
  theme(panel.grid = element_blank(),
        panel.border = element_blank(), 
        axis.title = element_blank(), 
        axis.ticks = element_blank(),
        axis.text = element_blank(), 
        legend.position = c(0.9, 0.1),
        legend.background = element_blank(),
        legend.title = element_blank()) +
  facet_wrap(~century) +
  guides(shape = guide_legend(ncol = 2))

suppressWarnings(print(plot))