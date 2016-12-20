###plot3.R

#plotten
plot(df$DateTime,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(df$DateTime,df$Sub_metering_2,col="red")
lines(df$DateTime,df$Sub_metering_3,col="blue")
legend("topright", lty=1, col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "))
#speichern
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()

