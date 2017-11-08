## Exploratory Data Analysis Project 1
## Kriti Sarin

## Data has been downloaded and unzipped

## Read data files
dataset <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")

## Subset and reformat data between 1/2/2007 and 2/2/2007
data <- subset(data, subset = (Date >= "1/2/2007" & Date <= "2/2/2007"))
data$DateTime <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

## Generate Plot 3
png("plot3.png", width=480, height=480)

plot(data[, dateTime], data[, Sub_metering_1], type = "l", xlab = "", ylab = "Energy sub metering")
lines(data[, dateTime], data[, Sub_metering_2],col="red")
lines(data[, dateTime], data[, Sub_metering_3],col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty = c(1,1), lwd = c(1,1))

dev.off()
