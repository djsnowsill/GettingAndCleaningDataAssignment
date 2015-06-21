# This function loads the underlying files for the dataSetType (i.e. test or training)
# and assembles them into a single data frame. The following actions are as taken:
# 1) Extracts only the measurements on the mean and standard deviation for each measurement 
# 2) Uses descriptive activity names to name the activities in the data set
# 3) Appropriately labels the data set with descriptive variable names 
loadTidyDataSet <- function(dataSetType){

  # Read Activity Labels into Data Frame
  activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ", col.names=c("activity_id","activity_label")) 
  
  # Read Feature Labels into Data Frame
  featureLabels <- read.table("./UCI HAR Dataset/features.txt", sep=" ", col.names=c("feature_id","feature_label")) 
  
  # Remove invalid characters and beautify feature labels
  featureLabels$feature_label <- gsub("-", "_", featureLabels$feature_label) # convert - to _
  featureLabels$feature_label <- gsub("\\(\\)", "", featureLabels$feature_label) # remove brackets
  featureLabels$feature_label <- gsub("^f", "Freq", featureLabels$feature_label)       # f to Freq
  featureLabels$feature_label <- gsub("^t", "Time", featureLabels$feature_label)       # t to Time
  
  # Read Subjects Vector
  subjects <- read.table(sprintf("./UCI HAR Dataset/%s/subject_%s.txt", dataSetType, dataSetType), sep=" ", col.names=c("subject_id")) 
  
  # Read Activities Vector
  activities <- read.table(sprintf("./UCI HAR Dataset/%s/y_%s.txt", dataSetType, dataSetType), sep=" ", col.names=c("activity_id")) 
  
  # Read Measurements Data Frame
  measurements <- read.table(sprintf("./UCI HAR Dataset/%s/X_%s.txt", dataSetType, dataSetType), sep="", col.names=featureLabels[,2])
  
  # Creates new data frame containing on columns with mean and std in column name
  smallMeasurements <- measurements[, +grep("_mean|_std", colnames(measurements))]
  
  # Remove any columns with meanFreq in the column name
  smallMeasurements <- smallMeasurements[, -grep("_meanFreq", colnames(smallMeasurements))]
  
  # Orders the columns alphabetically by column name
  smallMeasurements <- smallMeasurements[, order(colnames(smallMeasurements))]
  
  # Merges together subjects, activities and smallMeasurements dataframe
  tidyMeasurements <- bind_cols(subjects, activities, smallMeasurements)
  
  # Joins activity_label to dataframe using activity_id column
  tidyMeasurements <- inner_join(activityLabels, tidyMeasurements, by="activity_id")
  
  # Remove activity_id column from dataframe
  tidyMeasurements[1] <- NULL 
  
  return(tidyMeasurements)
}

# Install dplyr if not already installed
if (!require("dplyr",character.only = TRUE))
{
  install.packages("dplyr",dep=TRUE)
  if(!require("dplyr",character.only = TRUE)) stop("dplyr package not found")
}

# If Raw Data File Archive does not exist then download it
if( !file.exists("dataset.zip"))
{
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip", method="curl")  
}

# Download and unzip dataset.zip from Web
unzip("dataset.zip")

# Load Test and Training Sets
testMeasurements <- loadTidyDataSet("test")
trainMeasurements <- loadTidyDataSet("train")

# Merge Test and Training Sets together
measurements <- bind_rows(testMeasurements, trainMeasurements)

# Take Average of Subject and Activity Measurements and use for new Data Frame
summary <- aggregate(measurements[, 3:68], list(measurements$activity_label, measurements$subject_id), mean)
colnames(summary)[1] <- "Activity"
colnames(summary)[2] <- "SubjectId"

# Output Summary Tidy Data Set as DatasetHumanActivityRecognitionUsingSmartphones.txt
write.table(file="DatasetHumanActivityRecognitionUsingSmartphones.txt",row.names=FALSE,x=summary)





