# Household electric power consumption data to download
data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if (!file.exists("household_power_consumption.zip")) { download.file(data_url,destfile="household_power_consumption.zip",mode="wb") }

if (!file.exists("household_power_consumption.txt")) { unzip("household_power_consumption.zip") }

# if (file.exists("HEPCdata-2007-Feb1-Feb2.csv")) {
#         # If the subsetted data file already exists, just read it
#         plotdata <- read.csv("HEPCdata-2007-Feb1-Feb2.csv",colClasses=c("character","character","character",rep("numeric",7),"Date"),row.names=1)
# } else {
# Read the power consumption data from the unzipped file
hepcdata <- read.csv2("household_power_consumption.txt",
                      header=TRUE,
                      dec=".",
                      na.strings=c("?","NA"),
                      colClasses=c("character","character",rep("numeric",7))
)

# Create an analytically-friendly datetime variable from the Date and Time values
hepcdata$datetime <- strptime(paste(hepcdata$Date,hepcdata$Time),"%d/%m/%Y %H:%M:%S")

# Subset the data to just 2007-02-01 and 2007-02-02 for analysis
plotdata <- hepcdata[as.Date(hepcdata$datetime)=="2007-02-01" | as.Date(hepcdata$datetime)=="2007-02-02",]

# Store the subsetted data to avoid future loading-time costs if possible
write.csv(plotdata,"HEPCdata-2007-Feb1-Feb2.csv")
# }