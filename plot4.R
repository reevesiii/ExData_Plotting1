source("loadData.R")

## call loadData R file to source and filter the data frame
data <- loadData()

## create a graphics device for a PNG file and set the height and width
png(filename="plot4.png", 
    width=480, 
    height=480)

## set the global graph parameters
par(mfrow=c(2,2))

## set the first graph parameters
plot(data$Time, 
     data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

## set the second graph parameters
plot(data$Time, 
     data$Voltage, 
     type="l",
     xlab="datetime", 
     ylab="Voltage")

## set the third graph parameters
plot(data$Time, 
     data$Sub_metering_1,
     type="l",
     col="black",
     xlab="",
     ylab="Energy sub metering")

## add second line
lines(data$Time, 
      data$Sub_metering_2,
      col="red")

## add third line
lines(data$Time, 
      data$Sub_metering_3,
      col="blue")

## add legend, note: pch="-" added a smaller line than lty=1 so I used lty=1
legend("topright",
       lty=1,
       bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"))

## set the fourth graph parameters 
plot(data$Time, 
     data$Global_reactive_power, 
     type="n",
     xlab="datetime", 
     ylab="Global_reactive_power")

## Add line 
lines(data$Time, 
      data$Global_reactive_power)

## shuts down the current device
dev.off()

## clean up by removing data frame
rm(data)