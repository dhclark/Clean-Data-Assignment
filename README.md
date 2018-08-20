# Clean-Data-Assignment

##Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The associated script called run_analysis.R does the following.

    Merges the training and the test sets to create one data set.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Creates a tidy data set with the average of each variable for each activity and each subject.

## Code Explanation:

Checks to see if a folder for the data exists, if it does not exist it will create a new folder in the workding drive called 'data'. If the folder already exists it will move onto the next step.


        if(!file.exists("./data")){
        dir.create("./data")
        }


Downloads the raw data from the relevant Url and saves the zip file into a folder called 'Zipdata.zip' and then unzips this data into a folder in the 'data' directory (called 'UCI HAR Dataset')

        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile = "./data/zipdata.zip")
        unzip("./data/zipdata.zip",exdir = "./data")


Brings the raw data into R from UCI HAR Dataset using the read.table fuction. The 'header' has been set as FALSE as there are no column titles.

        idtest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",header = FALSE)
        datatest <- read.table("./data/UCI HAR Dataset/test/X_test.txt",header = FALSE)
        labeltest <- read.table("./data/UCI HAR Dataset/test/y_test.txt",header = FALSE)
        variables <- read.table("./data/UCI HAR Dataset/features.txt",header = FALSE)
        activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt",header = FALSE)
        idtrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",header = FALSE)
        datatrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt",header = FALSE)
        labeltrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt",header = FALSE)


Adds description names to the columns of the raw data tables from the 'test' and 'train' folders. The column names for the raw variable data is sourced from the 'features.txt' file in the 'UCI HAR Dataset'

        names(idtest) <- "subjectid"
        names(labeltest) <- "activityid"
        names(datatest) <- t(variables$V2)
        names(idtrain) <- "subjectid"
        names(labeltrain) <- "activityid"
        names(datatrain) <- t(variables$V2) 


Binds the training and the test sets to create one data set, df3, the first column identifies the subject and the second column the activity.
        
        df1 <- cbind(idtest, labeltest, datatest)
        df2 <- cbind(idtrain, labeltrain, datatrain)
        df3 <- rbind(df1, df2)


Specifies a logical vector that identifies measurements on the mean and standard deviation for each measurement

        SL <- grepl("mean",t(variables$V2)) | grepl("std",t(variables$V2))


The logical vector is extended to ensure the first two columns are included as these columns identify the subject and activity respectively 

        SL2 <- c(TRUE,TRUE,SL)

        
Subsets the dataframe df3 to only contain the measurements on the mean and standard deviation for each measurement.

        df4 <- df3[SL2]
        df5 <- df4

Replaces integer values for activityid in coloumn 2, with a descriptive activity name from the 'activity_labels.txt' file
      
        df5$activityid <- activities$V2[match(df5$activityid,activities$V1)]


Creates a second, independent tidy data set with the average of each variable for each activity and each subject in df7
        
        library(dplyr)
        
        df6 <- df5 %>% group_by(subjectid, activityid) %>% summarise_all(funs(mean))
        
        df7 <- as.data.frame(df6)
        
