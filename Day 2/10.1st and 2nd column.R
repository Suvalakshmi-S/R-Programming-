data=airquality
print("original data")
print(class(data))
print(head(data,10))
result=data[order(data[,1]),]
print("1st and 2nd column")
print(result)
data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
print("After removing")
print(data)
