## Exploratory Data Analysis Project 1
## Kriti Sarin

## Data has been downloaded and unzipped

## Read data files
dataset <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")

## Subset and reformat data between 1/2/2007 and 2/2/2007
data <- subset(data, subset = (Date >= "1/2/2007" & Date <= "2/2/2007"))
data$DateTime <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

## Generate Plot 2
png("plot2.png", width = 480, height = 480)
plot(data[, dateTime],data[, Voltage], type="l", xlab="datetime", ylab="Voltage")
dev.off()
