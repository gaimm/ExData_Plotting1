# setwd("C:\\Users\\gaimm\\OneDrive\\Desktop\\datasciencecoursera\\EDA")
# df<-read.csv("household_power_consumption.txt", sep=";", header = TRUE, na.strings="?")
# str(df)
# dim(df)
# df$DateTime <- strptime(paste(clean_data$Date, clean_data$Time), "%d/%m/%Y %H:%M:%S") 
# clean<-df[df$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png",width=900,height = 900)
hist(clean$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (Kilowatts)")
dev.off()


