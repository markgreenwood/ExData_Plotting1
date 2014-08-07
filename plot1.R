source("loadHEPCdata.R")

# Open a PNG device for output
png("plot1.png", bg="transparent")

# Plot the histogram
hist(plotdata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylim=c(0,1200),asp=1)

# Close the PNG device
dev.off()