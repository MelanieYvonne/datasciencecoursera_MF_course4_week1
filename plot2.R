
###plot2.R

#plotten
with(df,plot(DateTime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)"))
#speichern
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()




