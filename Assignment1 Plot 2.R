#Assignment 1 Plot 2

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


#Plot 2
#Convert to DateTime format
#png("plot2.png") #Uncomment to print PNG to working directory
Datetime <- paste(Data$Date, Data$Time)
Data$Datetime <- as.POSIXct(Datetime)
plot(Data$Datetime, Data$Global_active_power, type="l", xlab="",ylab="Global Acive Power Kilowatts")
#dev.off() #close viewing device
