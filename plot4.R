# Load data
source("load_data.R")
load_data()

source("build_plots.R")

# Initialize png device
png("plot4.png", width=480, height=480, units="px")

# Plot
par(mfcol=c(2, 2))
build_plot2()
build_plot3()
build_plot4()
build_plot5()

# Close the png device
dev.off()
