setwd("~/Desktop/Coursera R/Exploratory Data Analysis")
power.dat <- read.table("household_power_consumption.csv", sep = ";", na.strings = "?", header = TRUE)
power.sub <- power.dat[power.dat$Date == "1/2/2007" | power.dat$Date == "2/2/2007",]
power.sub$DateTime <- as.POSIXct(paste(power.sub$Date, power.sub$Time), format="%d/%m/%Y %H:%M:%S")

attach(power.sub)
png("plot3.png", width=480, height=480)
par(mfrow = c(1,1))
plot(DateTime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_1, col = "black")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"), lty = 1, cex = .8)
dev.off()