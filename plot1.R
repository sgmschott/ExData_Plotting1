##  Code for plot number 1 ; file plot1.R

dataFile<-"./household_power_consumption.txt"  

## This line reads the file

data<-read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")  

## Reads the data and declares decimal point as numbers

subSetData<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)  

##  Extracts the data within the specified period in dd/mm/yyyy format

globalActivePower<- as.numeric(subSetData$Global_active_power)

##  assigning the data the valus of Global_active_power and pulling that column of data from ##  the dataset 

png("plot1.png", width=480, height=480)  

## Sets the specifications for the plot 1

hist(globalActivePower, col="blue", main="Global Active Power", xlab="Global Active Power (Kilowatts)")

##  Creates a histogram and identifies the colors and margins for the plot

dev.off()
