exam=data.frame(
  name=c("Anastasia","dima","katherine","james","emily","micheal","matthew","laura","kevin","jonas"),
  score=c(12.5,9,16.5,12,9,20,14.5,13.5,8,19),
  attempts=c(1,3,2,3,2,3,1,1,2,1),
  qualify=c("yes","no","yes","no","no","yes","yes","no","no","yes")
)
print("Original dataframe")
print(exam)
print("After adding a column")
exam$country=c("USA","USA","USA","USA","USA","USA","USA","USA","USA","USA")
print(exam)