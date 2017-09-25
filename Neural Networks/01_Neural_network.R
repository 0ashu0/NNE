setwd("C:/Users/Ashutosh Tiwari/Desktop/Machine Learning/Neural Networks")

install.packages("neuralnet")
require(neuralnet)
library(neuralnet)


AND <- c(rep(0,7),1)
OR <- c(0,rep(1,7))

binary.data <- data.frame(expand.grid(c(0,1), c(0,1), c(0,1)), AND, OR)

print(net <- neuralnet(AND+OR~Var1+Var2+Var3, binary.data, hidden = 0, rep = 10, err.fct = "ce",
          linear.output = FALSE))

plot(net)

#####################################################################3


AND <- c(rep(0,3),1)
OR <- c(0,rep(1,3))

EX_OR <- c(0,1,1,0)

binary.data <- data.frame(expand.grid(c(0,1), c(0,1)), EX_OR)

print(net <- neuralnet(AND+OR~Var1+Var2, binary.data, hidden = 0, rep = 5, err.fct = "ce",
                       linear.output = FALSE))

plot(net)
