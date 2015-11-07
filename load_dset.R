## The data file is downloaded and unzipped in the working directory of R
## filename is provided as the paramter to the read.table function
filename <- "household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

## Data of 2007-02-01 and 2007-02-02 alone used in this assignment
dt<- data$Date == "1/2/2007" | data$Date == "2/2/2007"
sdata <- data[dt, ]
rm(data)
##attach(newData)
x <- paste(sdata$Date, sdata$Time)
sdata$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
#rownames(newData) <- 1:nrow(newData)
#dim(newData) # 2880   10
#attach(newData)