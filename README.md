# RDataSciClass3
R Data Science Class 3 Assignment

## Project Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The following is what has been submitted for this project:

1.  a tidy data set as described below, 
2.  a link to a Github repository 
3.  a script, called run_analysis.R, for performing the analysis, 
4.  a code book called CodeBook.md that describes the variables, the data, and  
                transformations performed to clean up 
                the data
5.  this README.md  

The original data to be tidied is data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description 
is available at the site where the data was obtained: 
        
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
        
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Repo Structure
There are three files files within this folder:
* 'README.md'
* 'CodeBook.md': Contains a description of the tidydata.txt file variables.
* 'run_analysis.R': The R script used to create the tidy dataset from the UCI HAR Dataset
* 'tidydata.txt': The tidy data output in a text file that is space delimited.

   Also included is a folder containing the UCI HAR Dataset which can also be found in the link above.

## UCI HAR Dataset Folder
The README.txt contains information on the subject experiment

The analysis files are contained in the folder UCI HAR Dataset. The four text files within this folder are:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.

### Within the UCI HAR Dataset folder, there are two folers:
- 'test'
- 'train'

#### Within the test folder, there are the following three files:
- 'X_test.txt': This included the Test dataset.
- 'y_test.txt': Test labels.
- 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

#### Within the train folder, there are the following three files:
- 'X_train.txt': Training set.
- 'y_train.txt': Training labels.
- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
