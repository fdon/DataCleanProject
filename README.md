# DataCleanProject

Raw data can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Script *run_analysis.R* lists the following **steps** to analyze the raw data and generate file *tinyDataset.txt*

	1.	read feature names

	2.	read training set

	3.	read test set

	4.	merge training and test sets

	5.	extract measurements on mean and standard deviation

	6.	Label the data set with descriptive variable names

	7.	Use descriptive activity names

	8.	create a tidy dataset with the average of each variable for each activity and each subject

	9.	save tinyDataset to a file
	
### The tinyDataset contains 180 observations of the following 88 variables

names(tinyDataset)

	[1] "Activity"                             "Subject"
	[3] "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"
	[5] "tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"
	[7] "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"
	[9] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"
	[11] "tGravityAcc-mean()-Z"                 "tGravityAcc-std()-X"
	[13] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"
	[15] "tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"
	[17] "tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"
	[19] "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"
	[21] "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"
	[23] "tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"
	[25] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"
	[27] "tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"
	[29] "tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"
	[31] "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"
	[33] "tBodyAccMag-mean()"                   "tBodyAccMag-std()"
	[35] "tGravityAccMag-mean()"                "tGravityAccMag-std()"
	[37] "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"
	[39] "tBodyGyroMag-mean()"                  "tBodyGyroMag-std()"
	[41] "tBodyGyroJerkMag-mean()"              "tBodyGyroJerkMag-std()"
	[43] "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"
	[45] "fBodyAcc-mean()-Z"                    "fBodyAcc-std()-X"
	[47] "fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"
	[49] "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"
	[51] "fBodyAcc-meanFreq()-Z"                "fBodyAccJerk-mean()-X"
	[53] "fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"
	[55] "fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"
	[57] "fBodyAccJerk-std()-Z"                 "fBodyAccJerk-meanFreq()-X"
	[59] "fBodyAccJerk-meanFreq()-Y"            "fBodyAccJerk-meanFreq()-Z"
	[61] "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"
	[63] "fBodyGyro-mean()-Z"                   "fBodyGyro-std()-X"
	[65] "fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"
	[67] "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"
	[69] "fBodyGyro-meanFreq()-Z"               "fBodyAccMag-mean()"
	[71] "fBodyAccMag-std()"                    "fBodyAccMag-meanFreq()"
	[73] "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-std()"
	[75] "fBodyBodyAccJerkMag-meanFreq()"       "fBodyBodyGyroMag-mean()"
	[77] "fBodyBodyGyroMag-std()"               "fBodyBodyGyroMag-meanFreq()"
	[79] "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-std()"
	[81] "fBodyBodyGyroJerkMag-meanFreq()"      "angle(tBodyAccMean,gravity)"
	[83] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"
	[85] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"
	[87] "angle(Y,gravityMean)"                 "angle(Z,gravityMean)"

