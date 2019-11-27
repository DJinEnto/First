
library(stringi)

library(remotes)
library(holepunch)

remotes::install_github("karthik/holepunch")

#read data
#decay <- read.csv('data/decay.csv')

#simulate some data
n_sites<-200
our_data<-data.frame(
temperature_c=rnorm(n_sites,mean=25,sd=3),
precipitation_mm=rnorm(n_sites,mean=300,sd=20),
possums_no=rpois(n_sites,lambda=1)
)

#standardise these variables
#sutract mean and divided by std dev, giving mean 0 and sd 1
#body of our function is: (x-mean(x))/sd(x)
#give it a name
rescale()<-function(x) {
  (x-mean(x))/sd(x)
}
#be careful, this can override an exisiting func with same name
#can get around this by using package_name::function
#also, give your functions relevant names
