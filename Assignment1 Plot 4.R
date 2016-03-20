
#Assignment 1 Plot 4
#Variables
Date1=as.Date("2007/02/01")
Date2=as.Date("2007/02/02")

#Read Data
setwd("C:/Users/mlaud/Dropbox/R/Exploratory Analysis")
pConsumption<-read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE,dec=".",na.strings = "?")


#Convert Data to Date format from character format
pConsumption$Date<-as.Date(pConsumption$Date, format="%d/%m/%Y")


#Subset Data between specified date range
Data<-subset(pConsumption,subset=Date>=Date1 & Date<=Date2)


#Variables
Date1=as.Date("2007/02/01")
Date2=as.Date("2007/02/02")

#Read Data
setwd("C:/Users/mlaud/Dropbox/R/Exploratory Analysis")
pConsumption<-read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE,dec=".",na.strings = "?")


#Convert Data to Date format from character format
pConsumption$Date<-as.Date(pConsumption$Date, format="%d/%m/%Y")


#Subset Data between specified date range
Data<-subset(pConsumption,subset=Date>=Date1 & Date<=Date2)


#png("plot4.png") #Exports the PNG file of the graph if you uncomment this line and "Dev.off()
par(mfrow=c(2,2))

 #Plot 1
 hist(Data$Global_active_power,col="red",xlab="Global Active Power Kilowatts",main="")
 #Plot 2
 Datetime <- paste(Data$Date, Data$Time)
 Data$Datetime <- as.POSIXct(Datetime)
 plot(Data$Datetime, Data$Voltage, type="l", xlab="datetime",ylab="Voltage") 
 #Plot 3
 plot(Data$Datetime, Data$Sub_metering_1 , type="l", xlab="",ylab="Energy sub metering") 
 lines(Data$Datetime, Data$Sub_metering_2, col="red") 
 lines(Data$Datetime, Data$Sub_metering_3, col="blue") 
 legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n", col=c("black", "red", "blue"))
 #Plot 4
 plot(Data$Datetime, Data$Global_reactive_power , type="l", xlab="", ylab="Global_reactive_power") 
# dev.off() #close viewing device
