# Week 4 Quiz
# Q1
acs <- read.csv("ACS.csv")
strsplit(names(acs),"wgtp")[[123]]
# "" "15"

# Q2
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", 
              "GDP.csv", method = "curl")
gdp <- read.csv("GDP.csv")
gdp_country <- gdp[5:194, 5]
gdp_country <- gsub(",", "", gdp_country)
mean(as.numeric(gdp_country), na.rm = TRUE)
# 377652.4

# Q3
# grep("^United", countryNames), 3

# Q4
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv",
              "Educational Data.csv", method = "curl")
educational_data <- read.csv("Educational Data.csv")
length(grep("Fiscal year end: June", educational_data[,10], ignore.case = TRUE))
# 13

# Q5
library(quantmod)
amzn = getSymbols("AMZN", auto.assign = FALSE)
sampleTimes = index(amzn)

sampleTimes2012 <- sampleTimes[grep("^2012-",sampleTimes)]
length(sampleTimes2012)
# 250

length(grep("1", strftime(sampleTimes2012, "%w")))
# 47
