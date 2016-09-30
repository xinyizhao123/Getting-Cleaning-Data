# Code Book

The tidy dataset (tidy_data.txt) includes 68 variables. The raw data was extracted from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The tidy data was created through the following process on the raw datasets:

1) Merges the training and the test data into one dataset.

2) Extracts only the measurements on the mean and standard deviation for each measurement. 

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive variable names. 

5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Below is the description of the variables in the tidy dataset:

#### subject.id


Definition: Unique identifiers for subjects

Class: Numeric

Value: integers 1 - 30.



#### activity.name


Definition: Name of activities.

Class: Character

Value: "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"



#### tBodyAcc-mean()-X
#### tBodyAcc-mean()-Y
#### tBodyAcc-mean()-Z
#### tBodyAcc-std()-X
#### tBodyAcc-std()-Y
#### tBodyAcc-std()-Z
#### tGravityAcc-mean()-X
#### tGravityAcc-mean()-Y
#### tGravityAcc-mean()-Z
#### tGravityAcc-std()-X
#### tGravityAcc-std()-Y
#### tGravityAcc-std()-Z
#### tBodyAccJerk-mean()-X
#### tBodyAccJerk-mean()-Y
#### tBodyAccJerk-mean()-Z
#### .... 
#### fBodyBodyGyroMag-std()
#### fBodyBodyGyroJerkMag-mean()
#### fBodyBodyGyroJerkMag-std()


Definition: Measurements of activities on mean or standard deviations

Class: Numeric

Value: continuous numbers
