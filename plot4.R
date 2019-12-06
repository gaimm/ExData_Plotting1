# setwd("C:\\Users\\gaimm\\OneDrive\\Desktop\\datasciencecoursera\\EDA")
# df<-read.csv("household_power_consumption.txt", sep=";", header = TRUE, na.strings="?")
# df$DateTime <- strptime(paste(clean_data$Date, clean_data$Time), "%d/%m/%Y %H:%M:%S") 
# Clean<-df[df$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot4.png",width=900,height = 600)
par(mfrow = c(2, 2)) 
plot(clean$DateTime, clean$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(clean$DateTime, clean$Voltage, type="l", xlab="DateTime", ylab="Voltage")
plot(clean$DateTime, clean$Sub_metering_1, type="l", ylab="Energy Sub metering", xlab="")
lines(clean$DateTime, clean$Sub_metering_2, type="l", col="red")
lines(clean$DateTime, clean$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       inset=c(0,.01),     lty = c(1, 1, 1), col=c("black", "red", "blue"), box.lty=0)
plot(clean$DateTime, clean$Global_reactive_power, type="l", xlab="DateTime", ylab="Global_reactive_power")

dev.off()





