loadData <- function() {
    
    ## read data file 
    internalData <- read.table("household_power_consumption.txt",
                               header=TRUE,
                               sep=";",
                               colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                               na="?")
    
    ## concantinate the date to time character data type and make it a POSIXlt datatype
    internalData$Time <- strptime(paste(internalData$Date, internalData$Time), "%d/%m/%Y %H:%M:%S")
    
    ## convert character data type to Date
    internalData$Date <- as.Date(internalData$Date, "%d/%m/%Y")
    
    ## create the filter for dates
    filterDates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
    
    ## subset the data
    internalData <- subset(internalData, Date %in% filterDates)
    
    return(internalData)
    
}
