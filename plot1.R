## load the dataset into memory by using load_dset.R.
source("load_dset.R")

## create a png file with the specified height and width
png(filename = "plot1.png", 
    width = 480, height = 480)

## create the histogram which will be captured in the PNG file created above
hist(sdata$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

## set the file graphic device to off
dev.off()
