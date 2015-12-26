library(dplyr)

#read feature names
features <- read.table("features.txt",stringsAsFactors = FALSE)
featureNames <- features$V2

#adjust the featureNames vector so as to make variable names more descriptive;
#we will then use this adjusted vector to rename the variables V1..V561
#in the training set and the test set.
featureNames <- gsub("^t","Time",featureNames)
featureNames <- gsub("Acc","Acceleration",featureNames)
featureNames <- gsub("^f","FFT",featureNames)
featureNames <- gsub("Mag","Magnitude",featureNames)

#read training set
 
Xtrain <- read.table("train/X_train.txt")
colnames(Xtrain) <- featureNames

ytrain <- read.table("train/y_train.txt")
ytrain <- rename(ytrain,Activity=V1)

subjectTrain <- read.table("train/subject_train.txt")
subjectTrain <- rename(subjectTrain,Subject=V1)

Train <- cbind(subjectTrain,ytrain,Xtrain)

#read test set

Xtest <- read.table("test/X_test.txt")
colnames(Xtest) <- featureNames

ytest <- read.table("test/y_test.txt")
ytest <- rename(ytest,Activity=V1)

subjectTest <- read.table("test/subject_test.txt")
subjectTest <- rename(subjectTest,Subject=V1)

Test <- cbind(subjectTest,ytest,Xtest)

#merge training and test sets
dataset <- rbind (Train,Test)

#extract measurements on mean and standard deviation

MeanStd <- grep(".*mean.*|.*std*",names(dataset),ignore.case=TRUE)
colsToKeep <- c(1,2,MeanStd)
dataset <- dataset[,colsToKeep]

#Use descriptive activity names instead of 1..6

dataset$Activity[dataset$Activity==1]<-"WALKING"
dataset$Activity[dataset$Activity==2]<-"WALKING_UPSTAIRS"
dataset$Activity[dataset$Activity==3]<-"WALKING_DOWNSTAIRS"
dataset$Activity[dataset$Activity==4]<-"SITTING"
dataset$Activity[dataset$Activity==5]<-"STANDING"
dataset$Activity[dataset$Activity==6]<-"LAYING"

#create a tidy dataset with the average of each variable for each activity and each subject
tidyDataset <- aggregate(.~Activity+Subject,dataset,mean)
tidyDataset <- tidyDataset[order(tidyDataset$Activity,tidyDataset$Subject),]

#save tidyDataset to a file
write.table(tidyDataset,file="tidyDataset.txt", row.names=FALSE)
