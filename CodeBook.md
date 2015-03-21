# Course Project Codebook

Original data source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# The run_analysis.R script does the following:
Merges the data files (X_train.txt and X_test.txt) into one dataset

Merges the activity labels (y_train.txt and y_test.txt) into one vector

Merges the subject numbers (subject_train.txt and subject_test.txt) into one vector

Extracts only the mean and standard deviation measurement variables from the merged dataset

Matches the activity names from the activity_labels.txt files to the activity labels

Provides clean names to the variables

Combines the individual vectors to the main data table. This is saved as the R object 'fullData' and the text file 'fullData.txt'

Calculates the means for each of those mean and standard deviation measurements, for each subject number and activity name. This is saved as the R object 'finalData' and the text file 'means.txt'


#Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset.

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

