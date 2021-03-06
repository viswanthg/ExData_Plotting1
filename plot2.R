ProjectData1a <- "household_power_consumption.txt"
df.power <- read.table(ProjectData1a, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df.power$timestamp = strptime(paste(df.power$Date, df.power$Time),format="%d/%m/%Y %H:%M:%S", tz="UTC")
startDate = strptime("01/02/2007 00:00:00", format="%d/%m/%Y %H:%M:%S", tz="UTC")
endDate = strptime("02/02/2007 23:59:59", format="%d/%m/%Y %H:%M:%S", tz="UTC")
df.power = df.power[df.power$timestamp >= startDate & df.power$timestamp <= endDate, ]

## Creating the plot
png(filename="plot2.png", width=480, height=480)
plot(df.power$timestamp, df.power$Global_active_power, type="l", xlab="",ylab="Global Active Power (kilowatts)")


