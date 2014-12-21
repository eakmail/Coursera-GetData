# Coursera.org : Getting and Cleaning Data

This is a course project for Getting and Cleaning Data on Coursera.org.

To start run_analysis.R script download data from: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip , 

and move "UCI HAR DATASET" to R working directory.

This script merges data and labels from :

1. UCI HAR Dataset/train/X_train.txt
2. UCI HAR Dataset/train/y_train.txt
3. UCI HAR Dataset/train/subject_train.txt
4. UCI HAR Dataset/test/X_test.txt
5. UCI HAR Dataset/test/y_test.txt
6. UCI HAR Dataset/test/subject_test.txt
7. UCI HAR Dataset/features.txt
8. UCI HAR Dataset/activity_labels.txt

Then it averages each variable by each activity and each subject and writes it to "getdata_course_project.txt" 

A full description of data set is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

CodeBook.md is a code book that describes the variables, the data and transformations of the data.
