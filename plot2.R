setwd("~/Desktop/Coursera R/Exploratory Data Analysis")
power.dat <- read.table("household_power_consumption.csv", sep = ";", na.strings = "?", header = TRUE)
power.sub <- power.dat[power.dat$Date == "1/2/2007" | power.dat$Date == "2/2/2007",]
power.sub$DateTime <- as.POSIXct(paste(power.sub$Date, power.sub$Time), format="%d/%m/%Y %H:%M:%S")

attach(power.sub)
png("plot2.png", width=480, height=480)
par(mfrow = c(1,1))
plot(DateTime, Global_active_power
     , type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()