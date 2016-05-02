# read dataset file from workspace
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSetData$Global_active_power)
## a PNG file (480 X 480) pixels
png("plot1.png", width=480, height=480)
##Create histogram for Global Active Power
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
