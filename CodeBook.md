#Course Project Code Book

##Course Project Description

The purpose of this project is to practice and reinforce the knowledge and skills learned from Getting and Cleanning Data course. By completing this project, people will have a better understanding on how to restructure, filter and create the desired and usable data for further analysis. 

##Data Source and Original Raw Data 

###* Data source
The data used in this project is sourced from UCI Human Activity Recignition database. This database is built from the recording of 30 subjects performing activities of daily living while carrying a waist-mouted smartphone with embedded inertial sensors.

###*Original Data Information

The original dataset include multiple files about test/traning group data, and detailed data for intertial signals for each group. Below are the data files we need for this project:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


##Creating Tidy Dataset

The output of this project is to create a tidy dataset that follows the principles of tidy clean data. The tidy data is created by following below 5 steps:

**1. Merges the training and the test sets to create one data set.**

   - First load all required txt file into R using read.table( ) function
  
   - Then combine the test/training data to their correspodning subject number and activitiy label
  
   - Assign descriptive names to subject names and activity lables for easier use
  
   - Lastly, merge test and traning data sets into a data table
   
   
   
**2. Extracts only the measurements on the mean and standard deviation for each measurement.**
  
  - In Features data, subset the feature variable number by filter descriptive features matching "mean" or "std"
  
  - Add 2, the 2 addition columns (subject number and activity labels) in the merge data, to the subsetted feature number. These are the column index
  
  - Extract desired measurements by using these column index and columns of subject number and activity labels
  

  
**3. Uses descriptive activity names to name the activities in the data set**
 
  - Using right_join function (in dplyr package) to combine activity name and activity label
 
 
  
**4. Appropriately labels the data set with descriptive variable names.**
 
  - Subset the specific features by filtering the feature vaiable numbers



**5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.**
 
  - USe group by function to group the data by activity and subjectnum
 
  - Use summise_each function calucate the mean of each variable
 
##Description of Variables in tidy_data.txt
 
 The output data sets is a data table inclues 180 observations and 81 variables
 Below is the short description of each variable by order:
 
 * activity: Factor with 6 levels. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 
 * subjectnum: interger. the unique identify number for each subject. Total 30 subjects recorded.
  
 * tBodyAcc-mean()-X: Numeric. The average of tBodyAcc-X for each subject and each activity
 
 * tBodyAcc-mean()-Y: Numeric. The average of tBodyAcc-Y for each subject and each activity              
 
 * tBodyAcc-mean()-Z: Numeric. The average of tBodyAcc-Z for each subject and each activity               
 
 * tBodyAcc-std()-X: Numeric. The standard deviation of tBodyAcc-X for each subject and each activity                
 
 * tBodyAcc-std()-Y: Numeric. The standard deviation of tBodyAcc-Y for each subject and each activity                
 
 * tBodyAcc-std()-Z: Numeric. The standard deviation of tBodyAcc-Z for each subject and each activity                
 
 * tGravityAcc-mean()-X: Numeric. The average of tGravityAcc-X for each subject and each activity            
 
 * tGravityAcc-mean()-Y: Numeric. The average of tGravityAcc-Y for each subject and each activity           
 
 * tGravityAcc-mean()-Z: Numeric. The average of tGravityAcc-Z for each subject and each activity           
 
 * tGravityAcc-std()-X: Numeric. The standard deviation of tGravityAcc-X for each subject and each activity                        
 
 * tGravityAcc-std()-Y: Numeric. The standard deviation of tGravityAcc-Y for each subject and each activity                                    
 
 * tGravityAcc-std()-Z: Numeric. The standard deviation of tGravityAcc-Z for each subject and each activity                                  
 
 * tBodyAccJerk-mean()-X: Numeric. The average of tBodyAccJerk-X for each subject and each activity           
 
 * tBodyAccJerk-mean()-Y: Numeric. The average of tBodyAccJerk-Y for each subject and each activity                   
 
 * tBodyAccJerk-mean()-Z: Numeric. The average of tBodyAccJerk-Z for each subject and each activity           
 
 * tBodyAccJerk-std()-X: Numeric. The standard deviation of tBodyAccJerk-X for each subject and each activity                       
 
 * tBodyAccJerk-std()-Y: Numeric. The standard deviation of tBodyAccJerk-Y for each subject and each activity                  
 
 * tBodyAccJerk-std()-Z: Numeric. The standard deviation of tBodyAccJerk-Z for each subject and each activity              
 
 * tBodyGyro-mean()-X: Numeric. The average of tBodyGyro-X for each subject and each activity              
 
 * tBodyGyro-mean()-Y: Numeric. The average of tBodyGyro-Y for each subject and each activity              
 
 * tBodyGyro-mean()-Z: Numeric. The average of tBodyGyro-Z for each subject and each activity              
 
 * tBodyGyro-std()-X: Numeric. The standard deviation of tBodyGyro-X for each subject and each activity              
 
 * tBodyGyro-std()-Y: Numeric. The standard deviation of tBodyGyro-Y for each subject and each activity                             
  
 * tBodyGyro-std()-Z: Numeric. The standard deviation of tBodyGyro-Z for each subject and each activity                             
 
 * tBodyGyroJerk-mean()-X: Numeric. The average of tBodyGyroJerk-X for each subject and each activity                       
 
 * tBodyGyroJerk-mean()-Y: Numeric. The average of tBodyGyroJerk-Y for each subject and each activity          
 
 * tBodyGyroJerk-mean()-Z: Numeric. The average of tBodyGyroJerk-Z for each subject and each activity          
 
 * tBodyGyroJerk-std()-X: Numeric. The standard deviation of tBodyGyroJerk-X for each subject and each activity           
 
 * tBodyGyroJerk-std()-Y: Numeric. The standard deviation of tBodyGyroJerk-Y for each subject and each activity           

 * tBodyGyroJerk-std()-Z: Numeric. The standard deviation of tBodyGyroJerk-Z for each subject and each activity                      
 
 * tBodyAccMag-mean()-X:Numeric. The average of tBodyAccMag-X for each subject and each activity              

 * tBodyAccMag-std()-X: Numeric. The standard deviation of tBodyAccMag-X for each subject and each activity                             

 * tGravityAccMag-mean()-Y: Numeric. The average of tBodyAccMag-Y for each subject and each activity                         

 * tGravityAccMag-std()-Y: Numeric. The standard deviation of tBodyAccMag-Y for each subject and each activity                          

 * tBodyAccJerkMag-mean()-Z: Numeric. The average of tBodyAccJerk-Z for each subject and each activity          

 * tBodyAccJerkMag-std()-Z: Numeric. The standard deviation of tBodyAccJerk-Z for each subject and each activity                     
 
 * tBodyGyroMag-mean()-X: Numeric. The average of tBodyGyroMag-X for each subject and each activity          

 * tBodyGyroMag-std()-X: Numeric. The standard deviation of tBodyGyroMag-X for each subject and each activity              

 * tBodyGyroJerkMag-mean-Y: Numeric. The average of tBodyGyroJerkMag-Y for each subject and each activity   

 * tBodyGyroJerkMag-std()-Y: Numeric. The standard deviation of tBodyGyroJerkMag-Y for each subject and each activity           

 * fBodyAcc-mean()-X: Numeric. The average of fBodyAcc-X for each subject and each activity               

 * fBodyAcc-mean()-Y: Numeric. The average of fBodyAcc-Y for each subject and each activity              

 * fBodyAcc-mean()-Z: Numeric. The average of fBodyAcc-Z for each subject and each activity               

 * fBodyAcc-std()-X: Numeric. The standard deviation of fBodyAcc-X for each subject and each activity                
 
 * fBodyAcc-std()-Y: Numeric. The standard deviation of fBodyAcc-Y for each subject and each activity                

 * fBodyAcc-std()-Z: Numeric. The standard deviation of fBodyAcc-Z for each subject and each activity                

 * fBodyAcc-meanFreq()-X: Numeric. The average of fBodyAcc-X frequency for each subject and each activity           

 * fBodyAcc-meanFreq()-Y: Numeric. The average of fBodyAcc-Y frequency for each subject and each activity

 * fBodyAcc-meanFreq()-Z: Numeric. The average of fBodyAcc-Z frequency for each subject and each activity           

 * fBodyAccJerk-mean()-X: Numeric. The average of fBodyAccJerk-X for each subject and each activity           

 * fBodyAccJerk-mean()-Y: Numeric. The average of fBodyAccJerk-Y for each subject and each activity
 
 * fBodyAccJerk-mean()-Z: Numeric. The average of fBodyAccJerk-Z for each subject and each activity           

 * fBodyAccJerk-std()-X: Numeric. The standard deviation of fBodyAccJerk-X for each subject and each activity
 
 * fBodyAccJerk-std()-Y: Numeric. The standard deviation of fBodyAccJerk-Y for each subject and each activity           

 * fBodyAccJerk-std()-Z: Numeric. The standard deviation of fBodyAccJerk-Z for each subject and each activity

 * fBodyAccJerk-meanFreq()-X: Numeric. The average of fBodyAccJerk-X frequency for each subject and each activity       

 * fBodyAccJerk-meanFreq()-Y: Numeric. The average of fBodyAccJerk-Y frequency for each subject and each activity

 * fBodyAccJerk-meanFreq()-Z: Numeric. The average of fBodyAccJerk-Z frequency for each subject and each activity
 
 * fBodyGyro-mean()-X: Numeric. The average of fBodyGyro-X for each subject and each activity              

 * fBodyGyro-mean()-Y: Numeric. The average of fBodyGyro-Y for each subject and each activity
 
 * fBodyGyro-mean()-Z: Numeric. The average of fBodyGyro-Z for each subject and each activity              

 * fBodyGyro-std()-X: Numeric. The standard deviation of fBodyGyro-X for each subject and each activity

 * fBodyGyro-std()-Y: Numeric. The standard deviation of fBodyGyro-Y for each subject and each activity                

 * fBodyGyro-std()-Z: Numeric. The standard deviation of fBodyGyro-Z for each subject and each activity               

 * fBodyGyro-meanFreq()-X: Numeric. The average of fBodyGyro-X frequency for each subject and each activity          

 * fBodyGyro-meanFreq()-Y: Numeric. The average of fBodyGyro-Y frequency for each subject and each activity
 
 * fBodyGyro-meanFreq()-Z: Numeric. The average of fBodyGyro-Z frequency for each subject and each activity          

 * fBodyAccMag-mean(): Numeric. The average of total fBodyAccMag for each subject and each activity               

 * fBodyAccMag-std(): The standard deviation of total fBodyAccMag for each subject and each activity               

 * fBodyAccMag-meanFreq(): Numeric. The average of total fBodyAccMag frequency for each subject and each activity          

 * fBodyBodyAccJerkMag-mean(): Numeric. The average of total fBodyAccJerkMag for each subject and each activity      

 * fBodyBodyAccJerkMag-std(): The standard deviation of total fBodyAccJerkMag for each subject and each activity       

 * fBodyBodyAccJerkMag-meanFreq(): Numeric. The average of total fBodyAccJerkMag frequency for each subject and each activity  

 * fBodyBodyGyroMag-mean(): Numeric. The average of total fBodyGyroMag for each subject and each activity         

 * fBodyBodyGyroMag-std(): The standard deviation of total fBodyAccGyroMag for each subject and each activity          

 * fBodyBodyGyroMag-meanFreq(): Numeric. The average of total fBodyAccGyroMag frequency for each subject and each activity     

 * fBodyBodyGyroJerkMag-mean(): Numeric. The average of total fBodyBodyGyroJerkMag for each subject and each activity     

 * fBodyBodyGyroJerkMag-std(): The standard deviation of total fBodyBodyGyroJerkMag for each subject and each activity       

 * fBodyBodyGyroJerkMag-meanFreq(): Numeric. The average of total fBodyBodyGyroJerkMag frequency for each subject and each activity
 
 

##Source
UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)