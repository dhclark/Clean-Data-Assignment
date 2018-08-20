##Create directory for data
if(!file.exists("./data")){
        dir.create("./data")
}

##Download data and unzip
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile = "./data/zipdata.zip")
        unzip("./data/zipdata.zip",exdir = "./data")

##Read data into R
        idtest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",header = FALSE)
        datatest <- read.table("./data/UCI HAR Dataset/test/X_test.txt",header = FALSE)
        labeltest <- read.table("./data/UCI HAR Dataset/test/y_test.txt",header = FALSE)
        variables <- read.table("./data/UCI HAR Dataset/features.txt",header = FALSE)
        activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt",header = FALSE)
        idtrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",header = FALSE)
        datatrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt",header = FALSE)
        labeltrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt",header = FALSE)

##Add descriptive column names
        names(idtest) <- "subjectid"
        names(labeltest) <- "activityid"
        names(datatest) <- t(variables$V2)
        names(idtrain) <- "subjectid"
        names(labeltrain) <- "activityid"
        names(datatrain) <- t(variables$V2)        
        
        
 ##Bined dataframes into one dataframe       
        df1 <- cbind(idtest, labeltest, datatest)
        df2 <- cbind(idtrain, labeltrain, datatrain)
        df3 <- rbind(df1, df2)


##Logical vector to select on mean and standard deviation variables
        SL <- grepl("mean",t(variables$V2)) | grepl("std",t(variables$V2))
        SL2 <- c(TRUE,TRUE,SL)

##Subset dataset for only mean and standard deviation variables
        df4 <- df3[SL2]
        df5 <- df4
 
##Add descriptive names for activity in column 2
        df5$activityid <- activities$V2[match(df5$activityid,activities$V1)]
 
##Summarise with the average of each variable for each activity and each subject
        library(dplyr)
        
        df6 <- df5 %>% group_by(subjectid, activityid) %>% summarise_all(funs(mean))
        
        df7 <- as.data.frame(df6)
        
