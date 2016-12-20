###plot4.R

#plotten

par(mfrow=c(2,2), mar=c(4,4,2,1))
with(data, {
        #Plot 1
        plot(df$DateTime,df$Global_active_power, type="l", 
             ylab="Global Active Power (kilowatts)", xlab="")
        #Plot 2
        plot(df$DateTime,df$Voltage, type="l", 
             ylab="Voltage (volt)", xlab="")
        #Plot 3
        plot(df$DateTime, df$Sub_metering_1, type="l", 
             ylab="Energy sub metering", xlab="")
        lines(df$DateTime, df$Sub_metering_2,col='Red')
        lines(df$DateTime, df$Sub_metering_3,col='Blue')
        legend("topright", lty=c(1,1), col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "))
        #Plot 4
        plot(df$DateTime, df$Global_reactive_power, type="l", 
             ylab="Global_reactive_power",xlab="datetime")
})
#speichern
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
