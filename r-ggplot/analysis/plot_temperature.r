library(ggplot2)

anomaly <- read.csv('../data/global_temperature_anomaly.csv')
g <- ggplot(anomaly, aes(x=year, y=january_c, fill= (january_c < 0))) + 
    geom_bar(stat='identity') +
    xlab('Year')

ggsave(g, width=9, height=6, file='/output/global_temperature.pdf')

