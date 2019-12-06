# setwd("C:\\Users\\gaimm\\OneDrive\\Desktop\\datasciencecoursera\\EDA")
# df<-read.csv("household_power_consumption.txt", sep=";", header = TRUE, na.strings="?")
# df$DateTime <- strptime(paste(clean_data$Date, clean_data$Time), "%d/%m/%Y %H:%M:%S") 
# clean<-df[df$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot3.png",width=900,height = 600)
plot(clean$DateTime, clean$Sub_metering_1, type="l", xlab="",ylab="Energy Sub metering", )
lines(clean$DateTime, clean$Sub_metering_2, type="l", col="red")
lines(clean$DateTime, clean$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1,  inset=c(0,.01),col=c("black", "red", "blue"),box.lty=0)
dev.off()

