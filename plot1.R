x=read.table("household_power_consumption.txt",sep=";",header=TRUE,quote="",comment.char="")
xmat=as.matrix(x)
vector=numeric()
for(i in 1:nrow(xmat)){vector[i]=as.numeric(xmat[i,3])}
png(filename="plot1.png")
hist(vector,main="Global Active Power",col="red",xlim=c(0,6),freq=TRUE,xlab="Global Active Power (kilowatts)",yaxp=c(0,1200000,6))
dev.off() 
