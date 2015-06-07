source("loadData.R")

## call loadData R file to source and filter the data frame
data <- loadData()

## create a graphics device for a PNG file and set the height and width
png(filename="plot3.png", 
    width=480, 
    height=480)

## set the graph parameters
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
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"))

## shuts down the current device
dev.off()

## clean up by removing data frame
rm(data)