# Code Book for 'DatasetHumanActivityRecognitionUsingSmartphones.txt'

# Original Data Set

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

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
