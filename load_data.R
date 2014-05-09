# Load needed libraries


# Set Working directory
#setwd(paste(getwd(), "Exploratory_data_analysis_p1", sep="/"))

# Check if the file has already been downloaded
#dest_file <- "power_consumption.zip"
#if (!file.exists(dest_file)) {
#        # Download data file
#        url_file <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#        download.file(url_file, dest_file, method="curl")
#}
load_data <- function() {
        
        # Load data
        data_file <- "household_power_consumption.txt"
        data <- read.csv(data_file, sep=";", na.strings="?")
        
        # Filter data on 2007-02-01 and 2007-02-02
        u <- data$Date == "1/2/2007"| data$Date == "2/2/2007"
        data <- data[u, ]
        
        # Set locale to English US
        Sys.setlocale("LC_TIME", "en_US.UTF-8")
        # Convert dates and times
        data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %X")
}