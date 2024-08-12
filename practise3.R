
# R Vector Function
#rep()
rep(c(2,3,4),time=4)
rep(c(1,4,8),each=2)
rep(c(0,8),time=c(3,4))
rep(1:4, length.out=9)
#seq()
seq(from=3.5,to=1.5,by =-.5)
seq(from =- 2.7,to=1.5, length.out = 10)
#any() and a11()
x <- 1:10
any(x>5)



# Initialize a vector to store the first 500 Fibonacci numbers
fibonacci <- numeric(500)

# Define the first two Fibonacci numbers
fibonacci[1] <- 1
fibonacci[2] <- 1

# Compute the remaining Fibonacci numbers
for (i in 3:500) {
  fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
}

# Print the vector
print(fibonacci)
######################################################################################

die_roll<-function(){
  x<-sample(1:6,1)
  if(x%%2==0){
    return(1)
  }else{
    return(0)
  }
}
result<-(die_roll())

#####################################################################################

tose<-function(){
  x<-rbinom(n=15,size=1,prob=0.5)
  if(sum(x)<8){
    print("lose")
  }else{
    print("win")
  }
}
result<-tose()
print(result)

############################################################

x<-matrix(0,ncol=5,nrow=5)

for(i in 1:5){
  x[i,i]=i
}
x
######################
y<-matrix(0,10,10)
for(i in 1:10){
  for(j in 1:10){
    y[i,j]=sample(1:6,1)
  }
}
y
###########################################################

mat<-function(n,p){
  x<-matrix(0,nrow=n,ncol=n)
  for(i in 1:n){
    for(j in 1:n){
      x[i,j]=p^abs(i-j)
    }
  }
  return(x)
}
############################################

array1<-array(1,c(10,4,6,5))
array1
###########################

extract_matrix<-function(matrix_input){
  x<-matrix_input[,seq(1,ncol(matrix_input),by=2)]
  return(x)
}
original<-matrix(1,nrow=5,ncol=5)
result<-extract_matrix(original)
print(result)
##############################################

c<-0
for(i in 1:1000){
  x<-sample(1:6,1)
  if(x%%2==0){
    c=c+1
  }
}
c
#########################################
random_numbers <- runif(n, min = 0, max = 1)
proportion <- mean(random_numbers >= 0.1 & random_numbers <= 0.2)


attempts <- function()
{
  sums <- 0
  count <- 0
  while(sums <= 1)
  {
    sums <- sums + runif(n = 1, min = 0, max = 1)
    count <- count + 1
  }
  return(count)
}


store <- numeric(length = 1000)
for(r in 1:1000)
{
  store[r] <-attempts()
}

#######################################################

attempts <- function(age)
{
  count <- 0
  remain <- age # age no. of candles remain in the beginning
  while(remain > 0)
  {
    count <- count + 1
    
    # randomly choose any number between 1 and remain
    blow_out <- sample(1:remain, size = 1)
    remain <- remain - blow_out
  }
  
  return(count)
}

store<-numeric(length=1000)
for(i in 1:1000){
  store[i]<-attempts(age = 25)
}
store
mean(store)

############################################################


c1=0
c2=0
c3=0
c4=0
c5=0
c6=0
c7=0
while((c1==0)||(c2==0)||(c3==0)||(c4==0)||(c5==0)||(c6==0)||(c7==0)){
  x<-sample(c("p","r","a","k","h","a","r"),size=1,c(0.25,0.20,0.20,0.15,0.10,0.05,0.05),replace=FALSE)
  if(x=="p"){
    c1=c1+1
  }else if(x=="r"){
    c2=c2+1
  }else if(x=="a"){
    c3=c3+1
  }else if(x=="k"){
    c4=c4+1
  }else if(x=="h"){
    c5=c5+1
  }else if(x=="a"){
    c6=c6+1
  }else if(x=="r"){
    c7=c7+1
  }
}
y=c1+c2+c3+c4+c5+c6+c7
y

















