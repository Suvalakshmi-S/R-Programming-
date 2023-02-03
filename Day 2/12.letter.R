
L=sample(LETTERS,size=50,replace=TRUE)
print("original data")
print(L)
f=factor(L)
print("original factors")
print(f)
print("only 5")
print(table(L[1:5]))