source("loadHEPCdata.R")

png("plot3.png", bg="transparent")
plot(plotdata$datetime,plotdata$Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
lines(plotdata$datetime,plotdata$Sub_metering_1,col="black")
lines(plotdata$datetime,plotdata$Sub_metering_2,col="red")
lines(plotdata$datetime,plotdata$Sub_metering_3,col="blue")
legend("topright",names(plotdata[,7:9]),col=c("black","red","blue"),lty=c(1,1,1))
dev.off()