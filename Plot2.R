## Import the data

data = read.table("household_power_consumption.txt",sep = ";",header = TRUE,colClasses = "character")

## Subset the Data

data1 = data[data$Date %in% c("1/2/2007","2/2/2007"),]

## Plotting the Data

data1$All_time = paste(data1$Date,data1$Time)
data1$All_time = strptime(data1$All_time,"%e/%m/%Y %T")

png(filename = "Plot2.png",width = 480,height = 480,units = "px")
plot(data1$All_time,data1$Global_active_power,type = "s",xlab = "",ylab = "Global Active Power (Kilowatts)")
dev.off()
