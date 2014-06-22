
CleanData <- function(){
        # Create the Samsung folder if it doesnt already exist
        if (!file.exists("./Samsung")) dir.create("./Samsung")
        
        # Download the file from the site
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url, "MyDataSet.zip", mode="wb")
        
        # Extract the zip file to the Samsung folder 
        unzip("MyDataSet.zip", exdir="./Samsung")
        
        # Set the working directory to the extracted "UCI HAR Dataset"
        setwd("./Samsung/UCI HAR Dataset")
        
        # Create featureData and activityLabelData by reading 
        # features.txt and activity_labels.txt
        featureData <- read.table("features.txt")
        colnames(featureData) <- c("FeatureId", "FeatureName")
        activityLabelData <- read.table("activity_labels.txt")
        colnames(activityLabelData) <- c("ActivityId", "ActivityName")
        
        # Create testData dataframe by combining subject_test.txt, y_test.txt 
        # and x_test.txt from the ./test folder using read.table and cbind
        testSubjectData <- read.table("./test/subject_test.txt")
        colnames(testSubjectData) <- c("SubjectId")
        testActivityData <- read.table("./test/y_test.txt")
        colnames(testActivityData) <- c("ActivityId")
        testXData <- read.table("./test/x_test.txt")
        colnames(testXData) <- featureData$FeatureName          # Assumption : featureData is sorted by FeatureId
        testData <- cbind(testSubjectData, testActivityData, testXData)
        
        # Create trainData dataframe by combining subject_train.txt, y_train.txt 
        # and x_train.txt from the ./train folder using read.table and cbind
        trainingSubjectData <- read.table("./train/subject_train.txt")
        colnames(trainingSubjectData) <- c("SubjectId")
        trainingActivityData <- read.table("./train/y_train.txt")
        colnames(trainingActivityData) <- c("ActivityId")
        trainXData <- read.table("./train/x_train.txt")
        colnames(trainXData) <- featureData$FeatureName         # Assumption : featureData is sorted by FeatureId
        trainData <- cbind(trainingSubjectData, trainingActivityData, trainXData)
        
        # Combine testData and trainData (rbind) to create fullData
        fullData <- rbind(testData, trainData)
        
        # Create featuresWithMeanOrStd dataframe that contains featurenames
        # that have mean or std in them
        featuresWithMeanOrStd <- 
                subset(featureData, 
                        grepl( "-mean()", featureData$FeatureName, fixed=T) | 
                        grepl( "-std()", featureData$FeatureName, fixed=T)
                       )
        # At this point featuresWithMeanOrStd dataframe has two columns
        #       1) FeatureId
        #       2) FeatureName
        # and only has rows where FeatureName contains -mean() or -std()
        # The FeatureId column of this dataframe can now be used to select 
        # the correct columns from fullData
        
        
        # Determine the columns to extract from fullData
        columnsToSelectFromFullData <- c(1,2)           # SubjectId and ActivityId need to be selected
        columnNumbersPlusTwo <- as.numeric(featuresWithMeanOrStd$FeatureId) + 2 # need to add two since subjectId and ActivityId are added in the beginning
        columnsToSelectFromFullData <- c(columnsToSelectFromFullData, columnNumbersPlusTwo)
        
        MeanAndStdData <- fullData[, columnsToSelectFromFullData]
        
        # Create dataset that substitutes ActivityId with ActivityName
        # First Merge with activityLabelData data frame by ActivityId
        # and the remove ActivityId column.
        MergeMeanAndStdDataWithActivity <- 
                merge(MeanAndStdData, activityLabelData, by="ActivityId")
        
        otherColumns <- 
                setdiff(colnames(MergeMeanAndStdDataWithActivity), 
                        c("SubjectId", "ActivityId", "ActivityName"))
        columnsToSelectFromMergedSet <- c("SubjectId", "ActivityName", otherColumns)
        
        MeanStdActivityNameData <- MergeMeanAndStdDataWithActivity[, columnsToSelectFromMergedSet]
        
        
        # Create a vector with tidy feature names
        # I define tidy as being 
        #       1) -mean() replaced by Mean
        #       2) -std() replaced by Std
        #       3) BodyBody replaced by Body (having BodyBody is a typo in the original dataset)
        #       3) -X replaced by _X
        #       4) -Y replaced by _Y
        #       5) -Z replaced by _Z
        TidyFeatureNames <- 
                sub("-mean()", "Mean", colnames(MeanStdActivityNameData), fixed=T)
        TidyFeatureNames <- sub("-std()", "Std", TidyFeatureNames, fixed=T)
        TidyFeatureNames <- sub("BodyBody", "Body", TidyFeatureNames, fixed=T)
        TidyFeatureNames <- sub("-X", "_X", TidyFeatureNames, fixed=T)
        TidyFeatureNames <- sub("-Y", "_Y", TidyFeatureNames, fixed=T)
        TidyFeatureNames <- sub("-Z", "_Z", TidyFeatureNames, fixed=T)
        
        colnames(MeanStdActivityNameData) <- TidyFeatureNames
        
        # Use melt and dcast to get the mean of the different measures 
        # grouped by SubjectId and ActivityName
        idVector <- c("SubjectId", "ActivityName")
        measurVarVector <- setdiff(colnames(MeanStdActivityNameData), idVector)
        DataMelt <- melt(MeanStdActivityNameData, id=idVector, measure.vars=measurVarVector)
        TidyDataSet <- dcast(DataMelt, SubjectId + ActivityName ~ variable, mean)
        
        # Add MeanOf to the beginning of each of the MeasureVar column-names
        tidyDsColNames <- paste("MeanOf", measurVarVector, sep="")
        tidyDsColNames <- c("SubjectId", "ActivityName", tidyDsColNames)
        colnames(TidyDataSet) <- tidyDsColNames

        # Write the TidyDataSet into a file
        write.table(TidyDataSet, file="TidyDataSet.txt", sep=" ", row.names=F, quote=F)
        TidyDataSet
}

