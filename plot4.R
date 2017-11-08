## Exploratory Data Analysis Project 1
## Kriti Sarin

## Data has been downloaded and unzipped

## Read data files
dataset <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")

## Subset and reformat data between 1/2/2007 and 2/2/2007
data <- subset(data, subset = (Date >= "1/2/2007" & Date <= "2/2/2007"))
data$DateTime <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

## Generate Plot 4
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

# Code for Plot 1
plot(data$DateTime, data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)

# Code for Plot 2
plot(data[, dateTime],data[, Voltage], type="l", xlab="datetime", ylab="Voltage")

# Code for Plot 3
plot(data[, dateTime], data[, Sub_metering_1], type="l", xlab="", ylab="Energy sub metering")
lines(data[, dateTime], data[, Sub_metering_2], col="red")
lines(data[, dateTime], data[, Sub_metering_3],col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "), lty=c(1,1), bty="n", cex=.5) 

# Code for Plot 4
plot(data[, dateTime], data[,Global_reactive_power], type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
