ProjectData1a <- "household_power_consumption.txt"
HPCData <- read.table(ProjectData1a, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
HPCSubSetData <- HPCData[HPCData$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(HPCSubSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

