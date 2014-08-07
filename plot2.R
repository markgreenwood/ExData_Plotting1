source("loadHEPCdata.R")

png("plot2.png", bg="transparent")
plot(plotdata$datetime,plotdata$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="n")
lines(plotdata$datetime,plotdata$Global_active_power)
dev.off()