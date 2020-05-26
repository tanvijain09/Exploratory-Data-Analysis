## Import the data

data = read.table("household_power_consumption.txt",sep = ";",header = TRUE,colClasses = "character")

## Subset the Data

data1 = data[data$Date %in% c("1/2/2007","2/2/2007"),]

## Plotting the Data

data1$Global_active_power = as.numeric(data1$Global_active_power)
png(filename = "Plot1.png",width = 480,height = 480,units = "px")
hist(data1$Global_active_power,col = "red",xlab = "Global Active Power (Kilowatts)",ylab = "Frequence",main = "Global Active Power")
dev.off()
