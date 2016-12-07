run_analysis<-function(){
    library(dplyr)
    
    ## Setting path and reading "train" files
    setwd("UCI HAR Dataset/train")
    Xtrainread<-read.fwf("X_train.txt",widths=c(rep(16,times=561)),header=FALSE,buffersize=10)
    Ytrainread<-read.csv("y_train.txt",sep=" ",header=FALSE)
    Subtrainread<-read.csv("subject_train.txt",sep=" ",header=FALSE)
    
    colnames(Ytrainread)<-"Activity" #Naming the column for Y_train
    colnames(Subtrainread)<-"Subject" #Naming the column for Subject_train
    trainmerged<-data.frame(Subtrainread,Ytrainread,Xtrainread) #Merging the X, Y and Subject train files

    ## Setting path and reading "test" files
    setwd("../test")
    Xtestread<-read.fwf("X_test.txt",widths=c(rep(16,times=561)),header=FALSE,buffersize=10)
    Ytestread<-read.csv("y_test.txt",sep=" ",header=FALSE)
    Subtestread<-read.csv("subject_test.txt",sep=" ",header=FALSE)
    
    colnames(Ytestread)<-"Activity" #Naming the column for Y_test
    colnames(Subtestread)<-"Subject" #Naming the column for Subject_test
    testmerged<-data.frame(Subtestread,Ytestread,Xtestread) #Merging the X, Y and Subject test files
    
    #Merging Train and Test datasets
    merged<-merge(testmerged,trainmerged,all=T) 
    
    #Reading "features.txt" from folder "UCI HAR Dataset" and  giving descriptive names for the columns 
    setwd("..")
    features<-read.csv("features.txt",sep="\t",header=F)
    colnames(merged)[3:563]<-as.character(features[1:561,1])# Giving descriptive names for the columns 
    
    #Selecting only the columns with mean and std in them.Also keeping the subject and activity columns for identity
    merged_onlymeanstd<-select(merged,Subject,Activity,contains("mean"),contains("std")) 
    
    # Giving descriptive activity labels
    merged_onlymeanstd$Activity=factor(merged_onlymeanstd$Activity,labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
    
    # Calculating the average of each variable for each activity and each subject.
    Averages<-summarise_each(group_by(merged_onlymeanstd,Subject,Activity),funs(mean))
    
    #Writing the "Averages" dataset into a .csv file in the working directory
    write.table(Averages,"../averages.txt",row.name=FALSE,sep=",")
}

