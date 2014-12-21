# CodeBook : Coursera.org : Getting and Cleaning Data

## Source of the data

1. Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Short description inside archive above: UCI HAR Dataset/README.txt
2. Full Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Transformations

run_analysis.R script merges data and labels from :

1. UCI HAR Dataset/train/X_train.txt
2. UCI HAR Dataset/train/y_train.txt
3. UCI HAR Dataset/train/subject_train.txt
4. UCI HAR Dataset/test/X_test.txt
5. UCI HAR Dataset/test/y_test.txt
6. UCI HAR Dataset/test/subject_test.txt
7. UCI HAR Dataset/features.txt
8. UCI HAR Dataset/activity_labels.txt

Then it averages each variable by each activity and each subject and writes it to "getdata_course_project.txt" 

## Output data variables

1. "Activity" - six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
2. "Subject" - an identifier of the subject who carried out the experiment.
3. "*mean()" - averages of the appropriate variables in input data.
