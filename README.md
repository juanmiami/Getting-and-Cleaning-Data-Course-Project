# Getting and Cleaning Data Course Project
Repository created for the submission of the course project for Getting and Cleaning Data course, part of Data Science specialization.

# Overview: 
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

    ([http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones])

# About the Raw Data:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities:

                      1 WALKING
                      
                      2 WALKING_UPSTAIRS
                      
                      3 WALKING_DOWNSTAIRS
                      
                      4 SITTING
                      
                      5 STANDING
                      
                      6 LAYING
                      

wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###For each record it is provided:

  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
  - Triaxial Angular velocity from the gyroscope. 
  - A 561-feature vector with time and frequency domain variables. 
  - Its activity label. 
  - An identifier of the subject who carried out the experiment.
  
###Notes: 

  - Features are normalized and bounded within [-1,1].
  - Each feature vector is a row on the text file.
 
# About the Tidy Data:
*The tidy data was obtained by merging both tables (training and test) in a single dataset and keeping only one those variables-columns- which reflect a mean ('mean()') or standard deviation ('std()').

*Each activity observation was labeled using the descriptive activities names file (activity_labels.txt in raw data).

*Then the variable names were appropriately labeled.

*Finally a tidy data set with the average of each variable for each activity and each subject was created and saved as a tab-delimited file called tidydata.txt, which can also be found in this repository.


For a more detailed description of the processing performed to create the tidy data set refer to header and comments on run_activity.R script file, also in this repository.

Refer to CodeBook file in this repository to find more detailed information about variables and observations on the tidy dataset.



#License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
