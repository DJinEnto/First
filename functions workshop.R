#function to do glm on occupancy data of species x
glmocc <- function(yvar, mydata) {
  
  mydata$y <- mydata[[yvar]]
  
  glm(
    y ~ temperature_std +
      precipitation_std +
      tree_cover_std +
      flowering_std,
    data = mydata,
    family = binomial()
  )
}


