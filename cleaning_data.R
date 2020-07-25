
library(dplyr)

# load data set test 
sub.test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
test.x <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")


# load data set training
sub.train <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
training.x <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
training.y <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")

feat <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
lab <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")

# preparing data set 

#anser step 4
names(training.x) <- feat$V2
names(test.x) <- feat$V2


training.x$id_act <- training.y$V1
test.x$id_act <- test.y$V1

training.x$subject  <- sub.train$V1
test.x$subject <- sub.test$V1

#anser step 1
df.complete <- rbind(training.x, test.x)

# save the dataframe 
write.csv(df.comp.mean, file = "tidydf.csv")






