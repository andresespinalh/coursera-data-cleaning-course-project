# Code book for 'tidy_data.txt'

This codebook correspondes to the `tidy_data.txt` file of this repository.



## Data

The `tidy_data.txt` data file is a text file, which separates columns with spaces. Every row corresponds to a measurement along a subject and activity.



## Variables

Each row contains signal measurements for each subject in each of the 6 activities.

- `SubjectID` Subject identifier (Integer)

- `ActivityID` Activity identifier (Integer)

- `ActivityName`

  Activity name, the possible values are: 
  - `WALKING`
  - `WALKING UPSTAIRS`
  - `WALKING DOWNSTAIRS`
  - `SITTING`
  - `STANDING`
  - `LAYING`

#### Time domain signals measurements

- Average time-domain body acceleration

  - `TimeDomainBodyAccelerometerMeanX`
  - `TimeDomainBodyAccelerometerMeanY`
  - `TimeDomainBodyAccelerometerMeanZ`

- Standard deviation of the time-domain body acceleration

  - `TimeDomainBodyAccelerometerStandardDeviationX`
  - `TimeDomainBodyAccelerometerStandardDeviationY`
  - `TimeDomainBodyAccelerometerStandardDeviationZ`

- Average time-domain gravity acceleration

  - `TimeDomainGravityAccelerometerMeanX`
  - `TimeDomainGravityAccelerometerMeanY`
  - `TimeDomainGravityAccelerometerMeanZ`

- Standard deviation of the time-domain gravity acceleration

  - `TimeDomainGravityAccelerometerStandardDeviationX`
  - `TimeDomainGravityAccelerometerStandardDeviationY`
  - `TimeDomainGravityAccelerometerStandardDeviationZ`

- Average time-domain body acceleration jerk

  - `TimeDomainBodyAccelerometerJerkMeanX`
  - `TimeDomainBodyAccelerometerJerkMeanY`
  - `TimeDomainBodyAccelerometerJerkMeanZ`

- Standard deviation of the time-domain body acceleration jerk

  - `TimeDomainBodyAccelerometerJerkStandardDeviationX`
  - `TimeDomainBodyAccelerometerJerkStandardDeviationY`
  - `TimeDomainBodyAccelerometerJerkStandardDeviationZ`

- Average time-domain body angular velocity

  - `TimeDomainBodyGyroscopeMeanX`
  - `TimeDomainBodyGyroscopeMeanY`
  - `TimeDomainBodyGyroscopeMeanZ`

- Standard deviation of the time-domain body angular velocity

  - `TimeDomainBodyGyroscopeStandardDeviationX`
  - `TimeDomainBodyGyroscopeStandardDeviationY`
  - `TimeDomainBodyGyroscopeStandardDeviationZ`

- Average time-domain body angular velocity jerk

  - `TimeDomainBodyGyroscopeJerkMeanX`
  - `TimeDomainBodyGyroscopeJerkMeanY`
  - `TimeDomainBodyGyroscopeJerkMeanZ`

- Standard deviation of the time-domain body angular velocity jerk

  - `TimeDomainBodyGyroscopeJerkStandardDeviationX`
  - `TimeDomainBodyGyroscopeJerkStandardDeviationY`
  - `TimeDomainBodyGyroscopeJerkStandardDeviationZ`

- Average and standard deviation of the time-domain magnitude of body acceleration:

  - `TimeDomainBodyAccelerometerMagnitudeMean`
  - `TimeDomainBodyAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

  - `TimeDomainGravityAccelerometerMagnitudeMean`
  - `TimeDomainGravityAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk

  - `TimeDomainBodyAccelerometerJerkMagnitudeMean`
  - `TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

  - `TimeDomainBodyGyroscopeMagnitudeMean`
  - `TimeDomainBodyGyroscopeMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk

  - `TimeDomainBodyGyroscopeJerkMagnitudeMean`
  - `TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`

#### Frequency domain signals measurement

- Average frequency-domain body acceleration

  - `FrequencyDomainBodyAccelerometerMeanX`
  - `FrequencyDomainBodyAccelerometerMeanY`
  - `FrequencyDomainBodyAccelerometerMeanZ`

- Standard deviation of the frequency-domain body acceleration

  - `frequencyDomainBodyAccelerometerStandardDeviationX`
  - `frequencyDomainBodyAccelerometerStandardDeviationY`
  - `frequencyDomainBodyAccelerometerStandardDeviationZ`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

  - `FrequencyDomainBodyAccelerometerMeanFrequencyX`
  - `FrequencyDomainBodyAccelerometerMeanFrequencyY`
  - `FrequencyDomainBodyAccelerometerMeanFrequencyZ`

- Average frequency-domain body acceleration jerk

  - `FrequencyDomainBodyAccelerometerJerkMeanX`
  - `FrequencyDomainBodyAccelerometerJerkMeanY`
  - `FrequencyDomainBodyAccelerometerJerkMeanZ`

- Standard deviation of the frequency-domain body acceleration jerk

  - `FrequencyDomainBodyAccelerometerJerkStandardDeviationX`
  - `FrequencyDomainBodyAccelerometerJerkStandardDeviationY`
  - `FrequencyDomainBodyAccelerometerJerkStandardDeviationZ`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk

  - `FrequencyDomainBodyAccelerometerJerkMeanFrequencyX`
  - `FrequencyDomainBodyAccelerometerJerkMeanFrequencyY`
  - `FrequencyDomainBodyAccelerometerJerkMeanFrequencyZ`

- Average frequency-domain body angular velocity

  - `FrequencyDomainBodyGyroscopeMeanX`
  - `FrequencyDomainBodyGyroscopeMeanY`
  - `FrequencyDomainBodyGyroscopeMeanZ`

- Standard deviation of the frequency-domain body angular velocity

  - `FrequencyDomainBodyGyroscopeStandardDeviationX`
  - `FrequencyDomainBodyGyroscopeStandardDeviationY`
  - `FrequencyDomainBodyGyroscopeStandardDeviationZ`

- Weighted average of the frequency components of the frequency-domain body angular velocity

  - `FrequencyDomainBodyGyroscopeMeanFrequencyX`
  - `FrequencyDomainBodyGyroscopeMeanFrequencyY`
  - `FrequencyDomainBodyGyroscopeMeanFrequencyZ`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

  - `FrequencyDomainBodyAccelerometerMagnitudeMean`
  - `FrequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
  - `FrequencyDomainBodyAccelerometerMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk

  - `FrequencyDomainBodyAccelerometerJerkMagnitudeMean`
  - `FrequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
  - `FrequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity

  - `FrequencyDomainBodyGyroscopeMagnitudeMean`
  - `FrequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
  - `FrequencyDomainBodyGyroscopeMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk

  - `FrequencyDomainBodyGyroscopeJerkMagnitudeMean`
  - `FrequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
  - `FrequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`

## Transformations

All data can be found as a zip file at: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The `run_analysis.R` R script performs all transformations on the data, the steps followed are listed below:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
