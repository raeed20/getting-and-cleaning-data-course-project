Feature Selection 
=================

This dataset represents the features and their corresponding activity types and subjects.

Subject is a numeric representation of the people who volunteered to participate in the activity. Subject values range is from 1 to 30.

Activity_Type indicates what type of activities the subject was doing during the recording of the data. Activity_Type can be one of six values namely (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING).

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

Originally,there was a large set of variables that were esimated from the features. However, in this dataset only the mean and standard deviation variables are kept

mean(): Mean value
std(): Standard deviation

After that, all the records were summarized and only the average of each variable for each activity and subject is presented.

Following is a list of all the variables

mean-tBodyAcc-mean()-X
mean-tBodyAcc-mean()-Y
mean-tBodyAcc-mean()-Z
mean-tGravityAcc-mean()-X
mean-tGravityAcc-mean()-Y
mean-tGravityAcc-mean()-Z
mean-tBodyAccJerk-mean()-X
mean-tBodyAccJerk-mean()-Y
mean-tBodyAccJerk-mean()-Z
mean-tBodyGyro-mean()-X
mean-tBodyGyro-mean()-Y
mean-tBodyGyro-mean()-Z
mean-tBodyGyroJerk-mean()-X
mean-tBodyGyroJerk-mean()-Y
mean-tBodyGyroJerk-mean()-Z
mean-tBodyAccMag-mean()
mean-tGravityAccMag-mean()
mean-tBodyAccJerkMag-mean()
mean-tBodyGyroMag-mean()
mean-tBodyGyroJerkMag-mean()
mean-fBodyAcc-mean()-X
mean-fBodyAcc-mean()-Y
mean-fBodyAcc-mean()-Z
mean-fBodyAccJerk-mean()-X
mean-fBodyAccJerk-mean()-Y
mean-fBodyAccJerk-mean()-Z
mean-fBodyGyro-mean()-X
mean-fBodyGyro-mean()-Y
mean-fBodyGyro-mean()-Z
mean-fBodyAccMag-mean()
mean-fBodyBodyAccJerkMag-mean()
mean-fBodyBodyGyroMag-mean()
mean-fBodyBodyGyroJerkMag-mean()
mean-tBodyAcc-std()-X
mean-tBodyAcc-std()-Y
mean-tBodyAcc-std()-Z
mean-tGravityAcc-std()-X
mean-tGravityAcc-std()-Y
mean-tGravityAcc-std()-Z
mean-tBodyAccJerk-std()-X
mean-tBodyAccJerk-std()-Y
mean-tBodyAccJerk-std()-Z
mean-tBodyGyro-std()-X
mean-tBodyGyro-std()-Y
mean-tBodyGyro-std()-Z
mean-tBodyGyroJerk-std()-X
mean-tBodyGyroJerk-std()-Y
mean-tBodyGyroJerk-std()-Z
mean-tBodyAccMag-std()
mean-tGravityAccMag-std()
mean-tBodyAccJerkMag-std()
mean-tBodyGyroMag-std()
mean-tBodyGyroJerkMag-std()
mean-fBodyAcc-std()-X
mean-fBodyAcc-std()-Y
mean-fBodyAcc-std()-Z
mean-fBodyAccJerk-std()-X
mean-fBodyAccJerk-std()-Y
mean-fBodyAccJerk-std()-Z
mean-fBodyGyro-std()-X
mean-fBodyGyro-std()-Y
mean-fBodyGyro-std()-Z
mean-fBodyAccMag-std()
mean-fBodyBodyAccJerkMag-std()
mean-fBodyBodyGyroMag-std()
mean-fBodyBodyGyroJerkMag-std()
