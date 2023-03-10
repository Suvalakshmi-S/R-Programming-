library(dplyr)
#i)
u <-airquality
missing_values <- colSums(is.na(u))
for (i in 1:ncol(u)) {
  if (missing_values[i]/nrow(u) < 0.1) {
    u <- u[!is.na(u[,i]),]
  } else {
    mean_val <- mean(u[,i], na.rm = TRUE)
    u[is.na(u[,i]),i] <- mean_val
  }
}
print(u)
#ii)
x=u[,"Ozone"] 
y=u[,"Solar.R"] 
m1<- lm(x~y)
m1 
#iii)
plot(x, y, main = "Air Quality",xlab = "Ozone", ylab = "Solar")
abline(lm(x~y,u1=u),col="blue")
