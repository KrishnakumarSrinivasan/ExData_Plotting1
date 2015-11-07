## load the dataset into memory using load_dset.R
source("load_dset.R")
# create the png file with the specified dimensions
png(filename = "plot3.png", 
    width = 480, height = 480)

# create the plot with the specified characteristics
plot(sdata$DateTime, sdata$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")

lines(sdata$DateTime, sdata$Sub_metering_2, col = "red")
lines(sdata$DateTime, sdata$Sub_metering_3, col = "blue")

## set the legends in topright
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1)

## set the file graphic device off
dev.off()

## remove the loaded object from memory
rm(sdata)