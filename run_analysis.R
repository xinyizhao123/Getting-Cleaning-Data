##### Getting and Cleaning Data Course Project
#### Xinyi Zhao
### 09/29/2016


####### QUESTION 1 -- Merges the training and the test sets to create one data set

# read data and clean the column names

setwd("H:/Coursera/UCI HAR Dataset")

# (1) features

feature <- read.table("./features.txt")

# (2) labels

label <- read.table("./activity_labels.txt")
colnames(label) <- c("activity.id","activity.name")

# (3) training

s.train <- read.table("./train/subject_train.txt")
x.train <- read.table("./train/x_train.txt") 
y.train <- read.table("./train/y_train.txt")

colnames(s.train) <- "subject.id"
colnames(x.train) <- feature[,2]  
colnames(y.train) <- "activity.id"

# (4) test

s.test <- read.table("./test/subject_test.txt") 
x.test <- read.table("./test/X_test.txt") 
y.test <- read.table("./test/y_test.txt")

colnames(s.test) <- "subject.id"
colnames(x.test) <- feature[,2]  
colnames(y.test) <- "activity.id"

# merge/combine data

training <- cbind(y.train,s.train,x.train)
test <- cbind(y.test,s.test,x.test)
final <- rbind(training,test) ### final dataset


####### QUESTION 2 -- Extracts only the measurements on the mean and standard deviation for each measurement

# (1) extract column numbers of mean or std, and include the first two columns of the final dataset (subject id and activity id)

eligible.col <- grep("-(mean|std)\\(\\)", feature[,2])+2

# (2) subset the final dataset based on the eligible column numbers

final.meanstd <- final[, c(1,2,eligible.col)]


####### QUESTION 3 -- Uses descriptive activity names to name the activities in the data set

final.act.renamed <- merge(label,final.meanstd,"activity.id") # merge activity names
final.act.renamed <- final.act.renamed[-c(1)] # remove the activity id; keep the activity names only


####### QUESTION 4 -- Appropriately labels the data set with descriptive variable names

# column names have been set in the code for Question 1


####### QUESTION 5 -- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

library(plyr)
final.avg <- ddply(final.act.renamed, .(activity.name, subject.id), function(x) colMeans(x[, 2:68]))

# export the data

write.table(final.avg, './tidy_data.txt',row.names=F)
