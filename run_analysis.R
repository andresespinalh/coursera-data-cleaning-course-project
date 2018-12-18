library( data.table )

### GETTING DATA ###

# Downloads files
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName <- "UCI HAR Dataset.zip"

if (!file.exists(fileName)) {
    download.file(fileURL, fileName, mode = "wb")
}

# Unzips files
dataPath <- "UCI HAR Dataset"

if (!file.exists(dataPath)) {
    unzip(fileName)
}


### READING DATA ###

# Test data sources
x_test <- fread( file.path(dataPath, "test", "X_test.txt") )
y_test <- fread( file.path(dataPath, "test", "y_test.txt") )
subject_test <- fread( file.path(dataPath, "test", "subject_test.txt") )

# Training data sources
x_train <- fread( file.path(dataPath, "train", "X_train.txt") )
y_train <- fread( file.path(dataPath, "train", "y_train.txt") )
subject_train <- fread( file.path(dataPath, "train", "subject_train.txt") )

# General data sources
activity_labels <- fread( file.path(dataPath, "activity_labels.txt") )
feature.names <- fread( file.path(dataPath, "features.txt") )


### DATA TRANSFORMATIONS AND MANIPULATION ###

# (3) Uses descriptive activity names to name the activities in the data set
activities <- activity_labels[ , .( 'ActivityId' = V1, 'ActivityName' = gsub( '_', ' ', V2 ) ) ]

# (2) Extracts only the measurements on the mean and standard deviation for each measurement.
feature.names <- feature.names[ grep( '\\bmean()\\b|\\bstd()\\b', feature.names$V2 ), .( 'Column'=V1, 'Name'=V2 ) ]
feature.values <- rbind( x_test, x_train )
feature.values <- feature.values[ , feature.names$Column, with = FALSE ]

# (4) Appropriately labels the data set with descriptive variable names.
feature.names_parsed <- gsub("[()-]", "", feature.names$Name)
feature.names_parsed <- gsub("^f", "FrequencyDomain", feature.names_parsed)
feature.names_parsed <- gsub("^t", "TimeDomain", feature.names_parsed)
feature.names_parsed <- gsub("Acc", "Accelerometer", feature.names_parsed)
feature.names_parsed <- gsub("Gyro", "Gyroscope", feature.names_parsed)
feature.names_parsed <- gsub("Mag", "Magnitude", feature.names_parsed)
feature.names_parsed <- gsub(".+Freq.+", "Frequency", feature.names_parsed)
feature.names_parsed <- gsub("mean", "Mean", feature.names_parsed)
feature.names_parsed <- gsub("std", "StandardDeviation", feature.names_parsed)
feature.names_parsed <- gsub("BodyBody", "Body", feature.names_parsed)

feature.names <- as.data.table( cbind( 'Column' = feature.names[ , Column ], 'Name' = feature.names_parsed ) )
colnames( feature.values ) <- feature.names$Name

# (1) Merges the training and the test sets to create one data set.
subject.activities <- rbind( cbind( 'SubjectID'=subject_test$V1, 'ActivityID'=y_test$V1 ), cbind( 'SubjectID'=subject_train$V1, 'ActivityID'=y_train$V1 ) )
subject.activity.values <- cbind( subject.activities, feature.values )
result <- merge( x = activities, y = subject.activity.values, by.x = 'ActivityId', by.y = 'ActivityID' )

# (5) From the data set in step (4), creates a second, independent tidy data set with the average of each variable for each activity and each subject.
summary <- result[, lapply( .SD, mean, na.rm=TRUE ), by = .( SubjectID, ActivityName, ActivityId )][order( SubjectID, ActivityName, ActivityId)]

## OUTPUT FILE GENERATION ##
write.table( summary, 'tidy_data.txt', row.name=FALSE )