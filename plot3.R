# Load data
source("load_data.R")
load_data()

source("build_plots.R")

# Initialize png device
png("plot3.png", width=480, height=480, units="px")

# Plot
par(mfcol=c(1, 1))
build_plot3()

# Close the png device
dev.off()
