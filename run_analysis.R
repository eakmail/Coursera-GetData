## read data
  x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
  subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
  x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
  subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
  feature_names <- read.table("UCI HAR Dataset/features.txt")[,2]
  activity_names <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]

## use descriptive variables names 
  colnames(x_train) <- feature_names
  colnames(y_train) <- c("Activity")
  colnames(subject_train) <- c("Subject")
  colnames(x_test) <- feature_names
  colnames(y_test) <- c("Activity")
  colnames(subject_test) <- c("Subject")

## use descriptive activity names
  y_train[,1] <- activity_labels[y_train[,1]]
  y_test[,1] <- activity_labels[y_test[,1]]

## use only mean and std in measurement
  reduced_names <- grep("mean.)|std", feature_names, value=TRUE)
  x_reduced_train <- x_train[,reduced_names]
  x_reduced_test <- x_test[,reduced_names]

## merge all data
  data_train <- cbind(subject_train, y_train, x_reduced_train)
  data_test <- cbind(subject_test, y_test, x_reduced_test)
  data <- rbind(data_train, data_test)

## calculate average by Activity and Subject 

  mean_data <- aggregate(. ~ Activity + Subject, data = data, mean)

## add "-mean()" to variables names 

  new_names = sapply(colnames(mean_data), function(x) paste0(x, "-mean()", collapse=""), USE.NAMES=FALSE)
  new_names[1] = "Activity"
  new_names[2] = "Subject"
  colnames(mean_data) <- new_names

## write data

  write.table(mean_data, "getdata_course_project.txt", row.names=FALSE)
