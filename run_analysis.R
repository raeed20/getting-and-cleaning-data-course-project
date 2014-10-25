#import "dplyr" library which is required to perform some data manipulation rapidly
library(dplyr)

#import the data - they should be available in the same directory as the script
activityLabels   <- read.table("activity_labels.txt",stringsAsFactors=F)
features         <- read.table("features.txt",stringsAsFactors=F)
activitiesTrain  <- readLines("train/y_train.txt")
activitiesTest   <- readLines("test/y_test.txt")
subjectTrain     <- read.table("train/subject_train.txt",stringsAsFactors=F)
subjectTest      <- read.table("test/subject_test.txt",stringsAsFactors=F)
testSet          <- read.table("test/x_test.txt")
trainSet         <- read.table("train/x_train.txt")

#merging the training and testing data, activities and subjects labels
allData          <- rbind(trainSet,testSet)
allActivities    <- c(activitiesTrain,activitiesTest) # c is used because the data obtaiend using readLines
allSubjects      <- rbind(subjectTrain,subjectTest)

#extracting data with mean and standard deviation
meanFeatures     <- grep("-mean\\()",features[,2])
stdFeatures      <- grep("-std\\()",features[,2])
dataWithMeanStd  <- allData[,c(meanFeatures,stdFeatures)]

#converting the activity types to factors 
factors            <- factor(allActivities,levels=1:6,labels=activityLabels[,2])

#combining the subjects and activity types with the data frame
final              <- cbind(dataWithMeanStd,factors)
final              <- cbind(final,allSubjects)


#naming the coloumns
colnames(final)    <- c(features[meanFeatures,2],features[stdFeatures,2],"Activity_Type","Subject")

#create a group table by grouping according to the subject and activity type
tidyData           <- group_by(final,Subject,Activity_Type)

#compute the mean of each variable for each activity type and each subject
tidyData           <- summarise_each(tidyData,funs(mean))

#renaming the variables to have sense of what have been done
variableNames      <- colnames(tidyData)[-c(1,2)]
variableNames      <- paste("mean-",variableNames,sep="")
colnames(tidyData) <- c("Subject","Activity_Type",variableNames)

#write the final tidy data set to a txt file
write.table(tidyData,"tidyData.txt",row.names=FALSE)