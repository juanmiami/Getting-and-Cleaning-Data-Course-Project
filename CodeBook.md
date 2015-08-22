#Description of the Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcc-XYZ and TimeGyro-XYZ. These time domain signals (prefix ‘Time’ to denote time) were captured at a constant rate of 50 Hz. and the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) – both using a low pass Butterworth filter.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMagnitude, TimeGravityAccMagnitude, TimeBodyAccJerkMagnitude, timeBodyGyroMagnitude, TimeBodyGyroJerkMagnitude).

A Fast Fourier Transform (FFT) was applied to some of these signals producing FreqBodyAcc-XYZ, FreqBodyAccJerk-XYZ, FreqBodyGyro-XYZ, FreqBodyAccJerkMag, FreqBodyGyroMag, FreqBodyGyroJerkMag. (Note the ‘Freq’ to indicate frequency domain signals).

###Description of abbreviations of measurements
1. Leading 'Time' or 'Freq' is based on time or frequency measurements.
2. Body = related to body movement.
3. Gravity = acceleration of gravity
4. Acc = accelerometer measurement
5. Gyro = gyroscopic measurements
6. Jerk = sudden movement acceleration
7. Magnitude = magnitude of movement
8. Mean and StdDev are calculated for each subject for each activity for each mean and standard deviation measurements.


The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.

These signals were used to estimate variables of the feature vector for each pattern:
‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions. They total 33 measurements including the 3 dimensions - the X,Y, and Z axes.

#Activity Labels
1. WALKING: subject was walking during the test
2. WALKING_UPSTAIRS: subject was walking up a staircase during the test
3. WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
4. SITTING: subject was sitting during the test
5. STANDING: subject was standing during the test
6. LAYING: subject was laying down during the test


##Identifiers - Observables
- ActivityId - The type of activity performed when the corresponding measurements were taken
- SubjectId  - The ID of the test subject

## Others
- ActivityType - Activity description

##Measurements
- TimeBodyAcc-Mean-X
- TimeBodyAcc-Mean-Y
- TimeBodyAcc-Mean-Z
- TimeBodyAcc-StdDev-X
- TimeBodyAcc-StdDev-Y
- TimeBodyAcc-StdDev-Z
- TimeGravityAcc-Mean-X
- TimeGravityAcc-Mean-Y
- TimeGravityAcc-Mean-Z
- TimeGravityAcc-StdDev-X
- TimeGravityAcc-StdDev-Y
- TimeGravityAcc-StdDev-Z
- TimeBodyAccJerk-Mean-X
- TimeBodyAccJerk-Mean-Y
- TimeBodyAccJerk-Mean-Z
- TimeBodyAccJerk-StdDev-X
- TimeBodyAccJerk-StdDev-Y
- TimeBodyAccJerk-StdDev-Z
- TimeBodyGyro-Mean-X
- TimeBodyGyro-Mean-Y
- TimeBodyGyro-Mean-Z
- TimeBodyGyro-StdDev-X
- TimeBodyGyro-StdDev-Y
- TimeBodyGyro-StdDev-Z
- TimeBodyGyroJerk-Mean-X
- TimeBodyGyroJerk-Mean-Y
- TimeBodyGyroJerk-Mean-Z
- TimeBodyGyroJerk-StdDev-X
- TimeBodyGyroJerk-StdDev-Y
- TimeBodyGyroJerk-StdDev-Z
- TimeBodyAccMagnitude-Mean
- TimeBodyAccMagnitude-StdDev
- TimeGravityAccMagnitude-Mean
- TimeGravityAccMagnitude-StdDev
- TimeBodyAccJerkMagnitude-Mean
- TimeBodyAccJerkMagnitude-StdDev
- TimeBodyGyroMagnitude-Mean
- TimeBodyGyroMagnitude-StdDev
- TimeBodyGyroJerkMagnitude-Mean
- TimeBodyGyroJerkMagnitude-StdDev
- FreqBodyAcc-Mean-X
- FreqBodyAcc-Mean-Y
- FreqBodyAcc-Mean-Z
- FreqBodyAcc-StdDev-X
- FreqBodyAcc-StdDev-Y
- FreqBodyAcc-StdDev-Z
- FreqBodyAcc-MeanFreq-X
- FreqBodyAcc-MeanFreq-Y
- FreqBodyAcc-MeanFreq-Z
- FreqBodyAccJerk-Mean-X
- FreqBodyAccJerk-Mean-Y
- FreqBodyAccJerk-Mean-Z
- FreqBodyAccJerk-StdDev-X
- FreqBodyAccJerk-StdDev-Y
- FreqBodyAccJerk-StdDev-Z
- FreqBodyAccJerk-MeanFreq-X
- FreqBodyAccJerk-MeanFreq-Y
- FreqBodyAccJerk-MeanFreq-Z
- FreqBodyGyro-Mean-X
- FreqBodyGyro-Mean-Y
- FreqBodyGyro-Mean-Z
- FreqBodyGyro-StdDev-X
- FreqBodyGyro-StdDev-Y
- FreqBodyGyro-StdDev-Z
- FreqBodyGyro-MeanFreq-X
- FreqBodyGyro-MeanFreq-Y
- FreqBodyGyro-MeanFreq-Z
- FreqBodyAccMagnitude-Mean
- FreqBodyAccMagnitude-StdDev
- FreqBodyAccMagnitude-MeanFreq
- FreqBodyBodyAccJerkMagnitude-Mean
- FreqBodyBodyAccJerkMagnitude-StdDev
- FreqBodyBodyAccJerkMagnitude-MeanFreq
- FreqBodyBodyGyroMagnitude-Mean
- FreqBodyBodyGyroMagnitude-StdDev
- FreqBodyBodyGyroMagnitude-MeanFreq
- FreqBodyBodyGyroJerkMagnitude-Mean
- FreqBodyBodyGyroJerkMagnitude-StdDev
- FreqBodyBodyGyroJerkMagnitude-MeanFreq
