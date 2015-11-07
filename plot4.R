## load the dataset into memory using load_dset.R
source("load_dset.R")

## create the png file with the specified dimensions
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))
## plot1 - Top-left
plot(sdata$DateTime, sdata$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")
## plot2 - Top-right
plot(sdata$DateTime, sdata$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")
## plot3 -- Bottom-left
plot(sdata$DateTime, sdata$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(sdata$DateTime, sdata$Sub_metering_2, col = "red")
lines(sdata$DateTime, sdata$Sub_metering_3, col = "blue")
# create the legends
legend("topright", 
       bty = "n", ## set the legend border to no
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1)

## plot 4 -- Bottom-right
plot(sdata$DateTime, sdata$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = "Global_reactive_power")

## set the file graphic device to off
dev.off()

## remove the object from memory
rm(sdata)