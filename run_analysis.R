rm(list = ls())
library(dplyr)
library(xlsx)
# library(XML)
# library(data.table)

# Import Data
  train = read.table(file = "UCI HAR Dataset/train/X_train.txt")     # Train dataset
  trainID = read.table(file = "UCI HAR Dataset/train/y_train.txt")   # Activity ID of each obs in train dataset
  trainsubj = read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)

  test = read.table(file = "UCI HAR Dataset/test/X_test.txt")        # Test dataset
  testID = read.table(file = "UCI HAR Dataset/test/y_test.txt")      # Activity ID of each obs in test dataset
  testsubj = read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE)

  features = read.table(file = "UCI HAR Dataset/features.txt")       # Col names for each var in train/test dataset
  
  activityLabels<-read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE)  # Map activity ID to activity

# Attach the activity IDs and subjects to the train and test datasets
  train = cbind(trainsubj,trainID,train)
  test = cbind(testsubj,testID,test)

# Direction Objective #4: Create descriptive column names ----
  fNames = as.character(features[,"V2"])          # Subset the features data to obtain the feature names
  
  names(train) = c("subject","activityID",fNames)
  names(test) = c("subject","activityID",fNames)

# Direction Objective #1: Merge the train and test datasets ----
  data = rbind(train,test)
  nrow(data) == (nrow(train)+nrow(test))

# Direction Objective #2: Select only columns that contain either mean or std in their name ----
  meanstddata = data[,c(1,2,grep("[Mm][Ee][Aa][Nn]|[Ss][Tt][Dd]",names(data)))]

# Direction Objective #3: Map the Activity Names to the Activity IDs ----
  names(activityLabels) = c("activityID","activity")
  meanstddata = full_join(activityLabels,meanstddata,by="activityID")
  meanstddata = select(meanstddata,-activityID)

# Direction Objective #5: Create independent tidy data set with average of each variable from recent dataset ----
  tidydata = meanstddata %>% group_by(activity,subject) %>% summarise_each(funs(mean))
write.table(tidydata,file = "tidydata.txt",sep = " ")
