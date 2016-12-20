###plot1.R

#plotten

hist(df$Global_active_power, xlab="Global Active Power (kilowatts)",
     main="Global Active Power",col="red")

#speichern

dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
