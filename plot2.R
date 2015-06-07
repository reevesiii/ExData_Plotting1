source("loadData.R")

## call loadData R file to source and filter the data frame
data <- loadData()

## create a graphics device for a PNG file and set the height and width
png(filename="plot2.png", 
    width=480, 
    height=480)

## set the graph parameters
plot(data$Time, 
     data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

## shuts down the current device
dev.off()

## clean up by removing data frame
rm(data)