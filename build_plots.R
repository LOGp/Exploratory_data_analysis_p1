build_plot1 <- function() {
        with(data, hist(Global_active_power, col="red", main="Global Active Power",
                        xlab="Global Active Power (kilowatts)"))
        
}

build_plot2 <- function() {
        with(data, {plot(DateTime, Global_active_power, type="l",
                         xlab="", ylab="Global Active Power (kilowatts)")})
        
}

build_plot3 <- function() {
        # Define variable to get the right range for the plot (to avoid a partial y axis)
        min <- min(data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3)
        max <- max(data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3)
        y <- rep(c(min, max), nrow(data)/2+1)
        y <- y[1:nrow(data)]
        # Plot
        with(data, {plot(DateTime, y, type="n",
                         xlab="", ylab="Energy sub metering")
                    lines(DateTime, Sub_metering_1, col="black")
                    lines(DateTime, Sub_metering_2, col="red")
                    lines(DateTime, Sub_metering_3, col="blue")
                    legend("topright", col=c("black", "red", "blue"), lty="solid",
                           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        })
        
}

build_plot4 <- function() {
        with(data, plot(DateTime, Voltage, type="l", xlab="datetime"))
}

build_plot5 <- function() {
        with(data, plot(DateTime, Global_reactive_power, type="l", xlab="datetime"))
}