
seat <- read.csv("C:/Users/Prakhar/Downloads/Worksheet1_b8b1f123-65fe-48ea-962e-238149b0a18e (1)/seating.csv")

seat

roll<-subset(seat,Roll.No==230769)
print(roll$Seat.Number)

print(max(seat$Roll.No))

pg<-subset(seat,Roll.No>10000000)

print(is.data.frame(seat))

summary(seat) #stats of a column
names(seat)# all variable name
dim(seat)


























