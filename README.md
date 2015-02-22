# Getting and Cleaning Data course project
Repo for the Getting and Cleaning Data course project.

## Purpose
To clean and tidy a data set based upon the raw UCI HAR data provided. 

## Explaination of the script

The script performs the following transformations on the data.

1. Combines the data with the activity and subject data for both test and training data sets.
2. Combines the test data and the training data sets.
3. Labels the data set using the features.txt file
4. Replaces the activity ids with their text equivalent
5. Filters the columns down to those containing the text "mean", "std", but also retains the subject and activity id columns.
6. Creates a tidy data set by aggregating subject and activity and generating a mean of the other columns.
7. Writes output to a file named tidy_set.txt