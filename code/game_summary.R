game_summary <- function(){

        library(dplyr)

        Parameter <- c("a", "c", "B", "m", "D", "d")
        Represents <- c("Potential assignment mark", "Cost of crisis to assignment mark", "Student's type: level of resiliency", "Mark penalty", "Lecturer's type: level of empathy", "Late deterrment utility")
        Range <- c("0<=a=<1", "0<c=<1", "0<=B=<1", "0<m=<1", "0<=D=<1", "0=<d=<1")

        frame <- data.frame(Parameter, Represents, Range) %>% rename("Parameter Represents" = Represents)
        frame



}