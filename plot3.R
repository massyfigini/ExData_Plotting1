## Get and subset data
Tabella="C:\\Users\\figinim\\Documents\\Studies\\Courses\\DS4 Exploratory Data Analysis\\Course_Project_1\\household_power_consumption.txt"
Dati=read.table(Tabella, header=TRUE,sep=";",na.strings = "?")
SubData <- Dati[Dati$Date == "1/2/2007" | Dati$Date == "2/2/2007", ]
datetime <- paste(SubData$Date,SubData$Time)
SubData$DateTime=strptime(datetime, "%d/%m/%Y %H:%M:%S")

## Plot 3
## NB: I'm Italian, the day of week are: gio=Thursday, ven=Friday, sab=Saturday
png("plot3.png", width=480, height=480)
plot(SubData$DateTime, SubData$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(SubData$DateTime, SubData$Sub_metering_2, type="l", col="red")
lines(SubData$DateTime, SubData$Sub_metering_3, type="l", col="blue")
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue"),lty=1)
dev.off()