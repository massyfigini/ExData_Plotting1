## Get and subset data
Tabella="C:\\Users\\figinim\\Documents\\Studies\\Courses\\DS4 Exploratory Data Analysis\\Course_Project_1\\household_power_consumption.txt"
Dati=read.table(Tabella, header=TRUE,sep=";",na.strings = "?")
SubData <- Dati[Dati$Date == "1/2/2007" | Dati$Date == "2/2/2007", ]
datetime <- paste(SubData$Date,SubData$Time)
SubData$DateTime=strptime(datetime, "%d/%m/%Y %H:%M:%S")

## Plot 2
## NB: I'm Italian, the day of week are: gio=Thursday, ven=Friday, sab=Saturday
png("plot2.png", width=480, height=480)
plot(SubData$DateTime, SubData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()