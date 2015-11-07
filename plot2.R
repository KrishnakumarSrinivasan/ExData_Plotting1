## load the dataset into memory by using load_dset.R.
source("load_dset.R")
png(filename = "plot2.png", 
     width = 480, height = 480)
## plot the chart using the specified dimensions

plot(sdata$DateTime, sdata$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

## set the file graphic device to off
dev.off()

## remove the object from memory
rm(sdata)