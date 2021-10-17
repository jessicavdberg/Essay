game <- function(a, c, B, D, m, d){

    library(dplyr)

   if(D < d/(c + m)){

       lecturer <- "Penalty"
   } else {
       lecturer <- "No Penalty"
   }

    if(B >= 1 - ((m*d)/(c*(c+m)))){
       student <- "On Time"
   } else {
       student <- "Late"
   }


s<- c(student)
l <- c(lecturer)

BR <- data.frame(s, l) %>% rename("Student" = s, "Lecturer" = l)
row.names(BR) <- c("Best Response")

sop <- a-c
snp <- a-c
slp <- a- (B*c) -m
slnp<- a - (B*c)
llp <- -(D*m)
llnp <- (D*c) -d


otp <- paste(as.character(sop),"0", sep = ", ")
lp <- paste(as.character(slp), as.character(llp), sep = ", ")
otnp <- paste(as.character(snp), "0", sep = ", ")
lnp <- paste(as.character(slnp), as.character(llnp), sep = ", ")

Penalty <- c(otp, lp)
NP <- c(otnp, lnp)

frame <- data.frame(Penalty, NP) %>% rename("No Penalty" = NP)
row.names(frame) <- c("On Time", "Late")

li <- list(frame,BR)
li


}