library(ggplot2)
library(dplyr)

#i)
mtacars <-mtcars
str(mtacars)
sum(is.na(mtacars))
mtacars <- mtacars[complete.cases(mtacars), ]
table(mtacars$vs)
model <- glm(vs ~ hp+ wt + cyl + disp, data = mtacars)
summary(model)
#ii)
data(mtcars)
set.seed(123)
split_index <- sample(1:nrow(mtcars), size = 0.8*nrow(mtcars))
train_data <- mtcars[split_index, ]
test_data <- mtcars[-split_index, ]
model <- glm(vs~hp+wt+disp+cyl , data = train_data, family = "binomial")
predictions <- predict(model, test_data, type = "response")
#iii)
predictions <- ifelse(predictions > 0.5, 1, 0)
library(caret)
confusionMatrix(predictions, test_data$am)
