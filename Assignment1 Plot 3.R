#Assignment 1 Plot 3

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


#Convert to DateTime format

Datetime <- paste(Data$Date, Data$Time)
Data$Datetime <- as.POSIXct(Datetime)

#Plot 3
#png("plot3.png")#Uncomment to print PNG to working directory

plot(Data$Datetime, Data$Sub_metering_1 , type="l", xlab="",ylab="Energy sub metering") #Plots the graph. "lines" adds additional datasets to the same plot
lines(Data$Datetime, Data$Sub_metering_2, col="red")
lines(Data$Datetime, Data$Sub_metering_3, col="blue")
#Add legend, labels and color. without lty=1 a strange vertical line appears in the legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
#dev.off() #close viewing device

