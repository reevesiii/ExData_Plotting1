source("loadData.R")

## call loadData R file to source and filter the data frame
data <- loadData()

## create a graphics device for a PNG file and set the height and width
png(filename="plot1.png", 
    width=480, 
    height=480)

## set the graph parameters
hist(data$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")

## shuts down the current device
dev.off()

## clean up by removing data frame
rm(data)