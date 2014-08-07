source("loadHEPCdata.R")

png("plot4.png", bg="transparent")

par(mfcol=c(2,2))

plot(plotdata$datetime,plotdata$Global_active_power,xlab="",ylab="Global Active Power",type="n")
lines(plotdata$datetime,plotdata$Global_active_power)

plot(plotdata$datetime,plotdata$Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
lines(plotdata$datetime,plotdata$Sub_metering_1,col="black")
lines(plotdata$datetime,plotdata$Sub_metering_2,col="red")
lines(plotdata$datetime,plotdata$Sub_metering_3,col="blue")
legend("topright",names(plotdata[,7:9]),col=c("black","red","blue"),lty=c(1,1,1),bty="n")

plot(plotdata$datetime,plotdata$Voltage,xlab="datetime",ylab="Voltage",type="n")
lines(plotdata$datetime,plotdata$Voltage)

plot(plotdata$datetime,plotdata$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="n")
lines(plotdata$datetime,plotdata$Global_reactive_power)

dev.off()