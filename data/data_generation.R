# mockup data

#TODO: generate more data
# at the moment code is only copied from app
mydata <- data.frame(long=c(8.530699, 8.547007, 8.564345, 8.579880, 8.574044),
                 lat=c(51.987898, 51.977114, 51.979863, 51.976004, 51.973043), 
                 intensity=c(1,2,3,4,5))
# save the data 
write.csv2(mydata, "data/mockup_data.csv")

