#Replacing blanks or NA with NaN

data <- read.csv("file_name.csv")
toString(data)
NaN_data <- replace(data, is.na(data), "NaN")
write.csv(NaN_data, file = "file_name.csv")

#Replacing other empty values with NaN

test_dat <- read.csv("file_name.csv", header = T , 
                     na.strings=c("9999", "-9999", "7999", "-7999", "#NAME?"
                                  , "NAN","", " ", "NA"))
test_NaN <- replace(test_dat, is.na(test_dat), "NaN")
write.csv(test_NaN, file = "file_name.csv")