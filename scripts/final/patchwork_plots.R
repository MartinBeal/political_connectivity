# Trying to make map layouts in R # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pacman::p_load(patchwork)

# m1 <- readRDS("data\\analysis\\global_grids\\fixcount_map.rds" ) # map of fixcout density
# m2 <- readRDS("data\\analysis\\global_grids\\richness_map.rds" ) # map of species richness
# m3 <- readRDS("data\\analysis\\global_grids\\timespent_map.rds") # map of time spent density


# lay <- m1 / m2 / m3 + plot_annotation(tag_levels = 'a') & theme(plot.tag = element_text(size = 35))
lay <- m1 / m2 / m3 + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 35, face = "plain"))

# lay <- m1 / m2 / m3 + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 35), plot.tag.position = c(0.01, .17))
# lay <- m1 / m2 / m3 + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 35), plot.tag.position = c(.95, .95))
ggsave("C:/Users/Martim Bill/Desktop/test/plotD17.png", plot=lay, width=26, height=47, units="cm", dpi=600)
ggsave("C:/Users/Martim Bill/Desktop/test/plotD17.pdf", plot=lay, width=26, height=47, units="cm", dpi=600)


lay <- m1 / m2 / m3 + plot_layout(guides = 'collect') & theme(legend.justification = "left", aspect.ratio=1)
ggsave("C:/Users/Martim Bill/Desktop/test/plotD4.png", plot = lay, width=25, height=45, units="cm", dpi=250)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## Bar charts ## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#p1 <- p # richness, ordered by breeding richness
#p2 <- p # richness , ordered by total richness
#p3 <- p # time spent

lay <- (p1 / p2) 
ggsave("C:/Users/Martim Bill/Desktop/test/plotE1.png", plot = lay, width=30, height=40, units="cm", dpi=250)

lay <- (p1 / p2) - p3
ggsave("C:/Users/Martim Bill/Desktop/test/plotE3.png", plot = lay, width=65, height=40, units="cm", dpi=250)

lay <- (p1 / p2) - p3 + plot_layout(guides = 'collect')
# ggsave("C:/Users/Martim Bill/Desktop/test/plotE6.png", plot = lay, width=70, height=40, units="cm", dpi=250)

# lay + plot_annotation(tag_levels = 'a') & theme(plot.tag = element_text(size = 55))
lay + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = ggsave("C:/Users/Martim Bill/Desktop/test/plotD17.pdf", plot=lay, width=26, height=47, units="cm", dpi=600)
))
lay + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 55))
lay + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 55), plot.tag.position = c(.0, .97))
lay + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 55), plot.tag.position = c(.95, .93))

# ggsave("C:/Users/Ma7rtim Bill/Desktop/test/plotE14A.png", width=70, height=40, units="cm", dpi=250) # red2blue
ggsave("C:/Users/Martim Bill/Desktop/test/plotE17.png", width=70, height=40, units="cm", dpi=600) # greyscale
ggsave("C:/Users/Martim Bill/Desktop/test/plotE17.pdf", width=70, height=40, units="cm", dpi=600)

dev.new()

# with sub-headings 
(p2 / p1 + plot_layout(tag_level = 'new')) - p3 + plot_annotation(tag_levels = c('a', 'i')) & theme(plot.tag = element_text(size = 55))
ggsave("C:/Users/Martim Bill/Desktop/test/plotE12.png", width=70, height=40, units="cm", dpi=250)
(p1 / p2) - p3 + plot_annotation(tag_levels = 'a') + plot_layout(guides = 'collect') & theme(plot.tag = element_text(size = 55))
ggsave("C:/Users/Martim Bill/Desktop/test/plotE16.png", width=70, height=40, units="cm", dpi=250)
ggsave("C:/Users/Martim Bill/Desktop/test/plotE16.pdf", width=70, height=40, units="cm", dpi=250)

## with time spent / unit area 

(p2 / p1) - (p3 / p4) + plot_annotation(tag_levels = 'a') + plot_layout(guides = 'collect') & theme(plot.tag = element_text(size = 55)) 
ggsave("C:/Users/Martim Bill/Desktop/test/plotE14.png", width=70, height=40, units="cm", dpi=250)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Networks  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

patch <- p1/p2 + plot_layout(guides = 'collect')
# ggsave("C:/Users/Martim Bill/Desktop/test/plotF1.png", width=40, height=40, units="cm", dpi=500)

patch + 
  plot_layout(heights = c(1.75, 1)) + 
  plot_annotation(tag_levels = 'A') & theme(
    plot.tag.position = c(0, .95), plot.tag = element_text(size = 35, hjust = 0, vjust = 0),
    legend.box.just = "left",
    legend.justification = "left",
    legend.text.align = 0,
    legend.title.align = 0
  )

ggsave("C:/Users/Martim Bill/Desktop/test/plotF20.png", width=14, height=13, units="in", dpi=600)
ggsave("C:/Users/Martim Bill/Desktop/test/plotF20.pdf", width=14, height=13, units="in", dpi=600)
ggsave("C:/Users/Martim Bill/Desktop/test/plotF19.png", width=14, height=13, units="in", dpi=600)
ggsave("C:/Users/Martim Bill/Desktop/test/plotF19.pdf", width=14, height=13, units="in", dpi=600)


# Monthly time spent maps #~~~~~~~~~~~~~~~~~0~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

lay <- (plist[[1]] + plist[[2]] + plist[[3]]) / (plist[[4]] + plist[[5]] + plist[[6]]) / (plist[[7]] + plist[[8]] + plist[[9]]) / (plist[[10]] + plist[[11]] + plist[[12]]) + plot_layout(guides = 'collect')

ggsave("C:/Users/Martim Bill/Desktop/test/1H.pdf", plot = lay, width=41, height=43, units="cm", dpi=500)


# Importance measures by area ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

lay <- p5 + p4 + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 50))
lay

ggsave("C:/Users/Martim Bill/Desktop/test/AAA5.png", plot = lay, width=50, height=30, units="cm", dpi=600)


# lay <- (p5 + p4) / p_weight + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 50))
lay <- (p5 / p4 / p_weight) + plot_annotation(tag_levels = 'A') & theme(plot.tag = element_text(size = 50))
lay

ggsave("C:/Users/Martim Bill/Desktop/test/AAB5.png", plot = lay, width=25, height=60, units="cm", dpi=600)


