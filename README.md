=========================================================================
Averages Analysis of Human Activity Recognition Using Smartphones Dataset
=========================================================================
The R script “run_analysis.R” analyses the UCI HAR Dataset that contains human activity data collected from the Samsung Galaxy S smartphone. 

The full details of the UCI HAR Dataset are given here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data that has been analyzed was obtained from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Output of the script
=========================
The output is a txt file “averages.txt” which contains averages of all the mean and std columns for each subject and each activity.

Steps performed by the script
==============================
The data analysis performed by the script involves the following steps:

1. The “test” data in “test/X_test.txt”, “test/y_test.txt” and “test/subject_test.txt” is merged into one single complete test dataset called with the subject, activity and values of each feature variable. The “Subject” and “Activity” columns are given their names.
2. The “train” data in “train/X_train.txt”, “train/y_train.txt” and “train/subject_train.txt” is merged into one single complete train dataset with the subject, activity and values of each feature variable. The “Subject” and “Activity” columns are given their names.
3. The complete test and train datasets are merged into a single dataset called “merged”.
4. The columns are given descriptive names of the feature variables they indicate.
5. Only the features that involve mean and std are selected to form a new dataset.
6. Descriptive activity names are given to the activities.
7. An independent tidy dataset “Averages” with average of each variable for each subject and each activity is created.
8. This dataset is written into a file “averages.txt”

To run the script
====================
Place the script and the “UCI HAR Dataset” folder in the working directory and run run_analysis()


