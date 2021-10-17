simul <- function(){

library(dplyr)


Penalty <- c("a-c, 0", "a-B(c) - m, D(m)")
NP <- c("a-c, 0", "a-B(c), D(c)-d")

frame <- data.frame(Penalty, NP) %>% rename("No Penalty" = NP)
row.names(frame) <- c("On Time", "Late")
frame


}