 
#datatype

num1 <- as.numeric(26L)
num1
num2 <- as.numeric(25-56i)
num2
num3 <- as.numeric(TRUE)
num3
num4 <- as.numeric("adsdds456")
num4
num5 <- as.numeric("123456")
num5

#operators

c1 <- c(8,9,6)
c2 <- c(2,4,5)
print(c1+c2) #Addition
print(c1-c2) #substraction
print(c1*c2) #Multiplication
print(c1/c2) #Division
print(c1%%c2) #Reminder
print(c1%/%c2) #Quotient
print(c1^c2) #Power of

#if else
y <- c("Hardwork","is", "the", "key", "of", "success")
if("key" %in% y)
{
  print("Key is found in our vector")
}else{
  print ("Key is not found in our vector")
}

#vectors & matrix

row_names <- c("r1", "r2", "r3", "r4")
col_names <- c("c1","c2","c3")
z <- matrix(c(7:18),nrow =4,byrow = TRUE, dimnames =list(row_names,col_names))

t(Z)# transpose


#cbind() and rbind() are used to add a colums and row respec.

rbind(Z,c(2,3,4))
Z
cbind(Z,c(8,5,2,0))
Z
t(z)


#addition and substraction
a1 <- matrix(c(5:16),nrow=4,ncol =3,byrow = TRUE)
a1
a2 <- matrix(c(1:12),nrow=4,ncol = 3,byrow = TRUE)
a2

sum <- a1+a2
sum
sub<-a1-a2
sub
mul<-a1*a2
mul
div<-a1/a2
div



