# Code Book for 'DatasetHumanActivityRecognitionUsingSmartphones.txt'

# Original Data Set

From README.txt extracted from  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed > six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy > S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular > velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset > has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% > the test data. 
>
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width > > sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and > body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational > force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each > > > window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' > for more details. 
>
> For each record it is provided:
> ======================================
> 
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
> - Triaxial Angular velocity from the gyroscope. 
> - A 561-feature vector with time and frequency domain variables. 
> - Its activity label. 
> - An identifier of the subject who carried out the experiment.

## Transformations on Original Data Set 

The original data was transformed by:

1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement. 
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labeling the data set with descriptive activity names. 
5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Tidy Data Set Definition

 Variable Name | Variable Type  | Values | Description
 ------------- | -------------  | ------------- | ------------- 
 Activity  | factor with 6 levels        | WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING | Links the class labels with their activity name. 
 SubjectId       | numerical      | 1:30         | Subject identification numbers
**Features/Measures** | **numeric** | **Features/Measures are normalized and bounded within [-1,1].** | **Mean or standard deviation of the triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration**
FreqBodyAcc_mean_X | | |
FreqBodyAcc_mean_Y | | |
FreqBodyAcc_mean_Z | | |
FreqBodyAcc_std_X | | |
FreqBodyAcc_std_Y | | |
FreqBodyAcc_std_Z | | |
FreqBodyAccJerk_mean_X | | |
FreqBodyAccJerk_mean_Y | | |
FreqBodyAccJerk_mean_Z | | |
FreqBodyAccJerk_std_X | | |
FreqBodyAccJerk_std_Y | | |
FreqBodyAccJerk_std_Z | | |
FreqBodyAccMag_mean | | |
FreqBodyAccMag_std | | |
FreqBodyBodyAccJerkMag_mean | | |
FreqBodyBodyAccJerkMag_std | | |
FreqBodyBodyGyroJerkMag_mean | | |
FreqBodyBodyGyroJerkMag_std | | |
FreqBodyBodyGyroMag_mean | | |
FreqBodyBodyGyroMag_std | | |
FreqBodyGyro_mean_X | | |
FreqBodyGyro_mean_Y | | |
FreqBodyGyro_mean_Z | | |
FreqBodyGyro_std_X | | |
FreqBodyGyro_std_Y | | |
FreqBodyGyro_std_Z | | |
TimeBodyAcc_mean_X | | |
TimeBodyAcc_mean_Y | | |
TimeBodyAcc_mean_Z | | |
TimeBodyAcc_std_X | | |
TimeBodyAcc_std_Y | | |
TimeBodyAcc_std_Z | | |
TimeBodyAccJerk_mean_X | | |
TimeBodyAccJerk_mean_Y | | |
TimeBodyAccJerk_mean_Z | | |
TimeBodyAccJerk_std_X | | |
TimeBodyAccJerk_std_Y | | |
TimeBodyAccJerk_std_Z | | |
TimeBodyAccJerkMag_mean | | |
TimeBodyAccJerkMag_std | | |
TimeBodyAccMag_mean | | |
TimeBodyAccMag_std | | |
TimeBodyGyro_mean_X | | |
TimeBodyGyro_mean_Y | | |
TimeBodyGyro_mean_Z | | |
TimeBodyGyro_std_X | | |
TimeBodyGyro_std_Y | | |
TimeBodyGyro_std_Z | | |
TimeBodyGyroJerk_mean_X | | |
TimeBodyGyroJerk_mean_Y | | | 
TimeBodyGyroJerk_mean_Z | | |
TimeBodyGyroJerk_std_X | | |
TimeBodyGyroJerk_std_Y | | |
TimeBodyGyroJerk_std_Z | | |
TimeBodyGyroJerkMag_mean | | |
TimeBodyGyroJerkMag_std | | |
TimeBodyGyroMag_mean | | |
TimeBodyGyroMag_std | | |
TimeGravityAcc_mean_X | | |
TimeGravityAcc_mean_Y | | |
TimeGravityAcc_mean_Z | | |
TimeGravityAcc_std_X | | |
TimeGravityAcc_std_Y | | |
TimeGravityAcc_std_Z | | |
TimeGravityAccMag_mean | | |
TimeGravityAccMag_std | | |
