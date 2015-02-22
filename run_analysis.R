library(Hmisc)
library(plyr)


mergeTrainingAndTestSets <- function() {
  training_data_filename <- "data/UCI\ HAR\ Dataset/train/X_train.txt"
  training_data_activity_filename <- "data/UCI\ HAR\ Dataset/train/Y_train.txt"
  training_data_subject_filename <- "data/UCI\ HAR\ Dataset/train/subject_train.txt"
  test_data_filename <- "data/UCI\ HAR\ Dataset/test/X_test.txt"
  test_data_activity_filename <- "data/UCI\ HAR\ Dataset/test/Y_test.txt"
  test_data_subject_filename <- "data/UCI\ HAR\ Dataset/test/subject_test.txt"
  
  training_data <- read.table(training_data_filename)
  training_data <- cbind( training_data, read.table( training_data_activity_filename )  )
  training_data <- cbind( training_data, read.table( training_data_subject_filename )  )
  
  test_data <- read.table(test_data_filename)
  test_data <- cbind( test_data, read.table( test_data_activity_filename )  )
  test_data <- cbind( test_data, read.table( test_data_subject_filename )  )  
  
  merged_set <- rbind(training_data, test_data)
  
  return(merged_set)
} 

labelDataSet <- function(merged_data_set) {
  labels <- read.table("data/UCI\ HAR\ Dataset/features.txt")[[2]]
  labels <- gsub('[-]', '_', labels) # Change dashes to underscores
  labels <- gsub('[()]', '', labels) # Junk other characters we don't like
  
  names(merged_data_set) <- c(labels, 'activity_id', 'subject_id')
  
  return(merged_data_set)
}

applyDescriptiveActivityNames <- function(merged_data_set) {
  activity_names_table <- read.table("data/UCI\ HAR\ Dataset/activity_labels.txt")
  
  activity_factor <- factor(merged_data_set$activity_id)
  levels(activity_factor) <- activity_names_table[[2]]
  
  merged_data_set$activity_id <- activity_factor
  
  return(merged_data_set)
}



extractMeanAndSTDDevForEachMeasurement <- function(merged_data_set) {
  retained_cols <- grep(".*_id|.*mean.*|.*std.*", names(merged_data_set))
  
  return(merged_data_set[, retained_cols])
}

tidyAverageDataSet <- function(mean_and_std) {
  return(aggregate(. ~subject_id + activity_id, mean_and_std, mean))
}

merged_data_set <- mergeTrainingAndTestSets()
merged_data_set <- labelDataSet(merged_data_set)
merged_data_set <- applyDescriptiveActivityNames(merged_data_set)
mean_and_std <- extractMeanAndSTDDevForEachMeasurement(merged_data_set)
tidy_set <- tidyAverageDataSet(mean_and_std)

write.table(tidy_set, file = "tidy_set.txt", row.names = F)
