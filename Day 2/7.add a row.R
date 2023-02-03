exam=data.frame(
  name=c("Anastasia","dima","katherine","james","emily","micheal","matthew","laura","kevin","jonas"),
  score=c(12.5,9,16.5,12,9,20,14.5,13.5,8,19),
  attempts=c(1,3,2,3,2,3,1,1,2,1),
  qualify=c("yes","no","yes","no","no","yes","yes","no","no","yes")
)
print("Original dataframe")
print(exam)
new=data.frame(
name=c('Robert','sophia'),
score=c(10.5,9),
attempts=c('yes','no'),
qualify=c('yes','no')
)
exam=rbind(exam,new)
print("After a new row")
print(exam)