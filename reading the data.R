### Datensatz in R holen

setwd("M:/03_Plan_net_media/13_Insights/02_Intelligence/04_Interne_Projekte/Melanie/Coursera/Kurs4/Woche 1/Assigment/")
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";",colClasses=c("character", "character", rep("numeric",7)),
                   na="?")

## Konvertieren von Datum und Zeit in Klassen + Zeitauswahl
DateTime <-paste(data$Date,data$Time)
data$DateTime <-strptime(DateTime, "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")


#filtern
datenfilter <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
df <- subset(data, Date %in% datenfilter)

