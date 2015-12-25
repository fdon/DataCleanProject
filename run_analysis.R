#getwd()
#setwd("C:/Users/Francois/Documents/R/getclean/Project")

install.packages("dplyr")
library(dplyr)
#install.packages("tidyr")
#library(tidyr)

#read feature names
features <- read.table("features.txt")
featureNames <- features$V2

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

#Label the data set with descriptive variable names
#Done with replacing variable names V1...V561 with feature names


#Use descriptive activity names instead of 1..6

dataset$Activity[dataset$Activity==1]<-"WALKING"
dataset$Activity[dataset$Activity==2]<-"WALKING_UPSTAIRS"
dataset$Activity[dataset$Activity==3]<-"WALKING_DOWNSTAIRS"
dataset$Activity[dataset$Activity==4]<-"SITTING"
dataset$Activity[dataset$Activity==5]<-"STANDING"
dataset$Activity[dataset$Activity==6]<-"LAYING"

#create a tidy dataset with the average of each variable for each activity and each subject
tinyDataset <- aggregate(.~Activity+Subject,dataset,mean)
tinyDataset <- tinyDataset[order(tinyDataset$Activity,tinyDataset$Subject),]

#save tinyDataset to a file
write.table(tinyDataset,file="tinyDataset.txt", row.names=FALSE)
