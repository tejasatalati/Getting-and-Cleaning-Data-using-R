## Getting and Cleaning Data - Course Project Code Book

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Summary of the data from study is as below:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The data points are from accelerometer and gyroscope 3-axial raw signals. For each of these features, the original study calculated several values. This project only imported the mean and standard deviation calculations for each feature. The data is cleansed and stored as tidy data by the script to understand these data points better. 

the average of each variable for each activity and each subject is calculated as a part of the new dataset. These averages(mean), along with their corresponding Subject ID and Activity Type are written to the output file.

The new field names used are as below:
 [1] "activity"                                
 [2] "subject"                                 
 [3] "Time_Body_AcclMtr_Mean_X"                
 [4] "Time_Body_AcclMtr_Mean_Y"                
 [5] "Time_Body_AcclMtr_Mean_Z"                
 [6] "Time_Body_AcclMtr_StdDev_X"              
 [7] "Time_Body_AcclMtr_StdDev_Y"              
 [8] "Time_Body_AcclMtr_StdDev_Z"              
 [9] "Time_Gravity_AcclMtr_Mean_X"             
[10] "Time_Gravity_AcclMtr_Mean_Y"             
[11] "Time_Gravity_AcclMtr_Mean_Z"             
[12] "Time_Gravity_AcclMtr_StdDev_X"           
[13] "Time_Gravity_AcclMtr_StdDev_Y"           
[14] "Time_Gravity_AcclMtr_StdDev_Z"           
[15] "Time_Body_AcclMtr_Jerk_Mean_X"           
[16] "Time_Body_AcclMtr_Jerk_Mean_Y"           
[17] "Time_Body_AcclMtr_Jerk_Mean_Z"           
[18] "Time_Body_AcclMtr_Jerk_StdDev_X"         
[19] "Time_Body_AcclMtr_Jerk_StdDev_Y"         
[20] "Time_Body_AcclMtr_Jerk_StdDev_Z"         
[21] "Time_Body_Gyro_Mean_X"                   
[22] "Time_Body_Gyro_Mean_Y"                   
[23] "Time_Body_Gyro_Mean_Z"                   
[24] "Time_Body_Gyro_StdDev_X"                 
[25] "Time_Body_Gyro_StdDev_Y"                 
[26] "Time_Body_Gyro_StdDev_Z"                 
[27] "Time_Body_Gyro_Jerk_Mean_X"              
[28] "Time_Body_Gyro_Jerk_Mean_Y"              
[29] "Time_Body_Gyro_Jerk_Mean_Z"              
[30] "Time_Body_Gyro_Jerk_StdDev_X"            
[31] "Time_Body_Gyro_Jerk_StdDev_Y"            
[32] "Time_Body_Gyro_Jerk_StdDev_Z"            
[33] "Time_Body_AcclMtr_Magnitude_Mean_"       
[34] "Time_Body_AcclMtr_Magnitude_StdDev_"     
[35] "Time_Gravity_AcclMtr_Magnitude_Mean_"    
[36] "Time_Gravity_AcclMtr_Magnitude_StdDev_"  
[37] "Time_Body_AcclMtr_Jerk_Magnitude_Mean_"  
[38] "Time_Body_AcclMtr_Jerk_Magnitude_StdDev_"
[39] "Time_Body_Gyro_Magnitude_Mean_"          
[40] "Time_Body_Gyro_Magnitude_StdDev_"        
[41] "Time_Body_Gyro_Jerk_Magnitude_Mean_"     
[42] "Time_Body_Gyro_Jerk_Magnitude_StdDev_"   
[43] "Freq_Body_AcclMtr_Mean_X"                
[44] "Freq_Body_AcclMtr_Mean_Y"                
[45] "Freq_Body_AcclMtr_Mean_Z"                
[46] "Freq_Body_AcclMtr_StdDev_X"              
[47] "Freq_Body_AcclMtr_StdDev_Y"              
[48] "Freq_Body_AcclMtr_StdDev_Z"              
[49] "Freq_Body_AcclMtr_Jerk_Mean_X"           
[50] "Freq_Body_AcclMtr_Jerk_Mean_Y"           
[51] "Freq_Body_AcclMtr_Jerk_Mean_Z"           
[52] "Freq_Body_AcclMtr_Jerk_StdDev_X"         
[53] "Freq_Body_AcclMtr_Jerk_StdDev_Y"         
[54] "Freq_Body_AcclMtr_Jerk_StdDev_Z"         
[55] "Freq_Body_Gyro_Mean_X"                   
[56] "Freq_Body_Gyro_Mean_Y"                   
[57] "Freq_Body_Gyro_Mean_Z"                   
[58] "Freq_Body_Gyro_StdDev_X"                 
[59] "Freq_Body_Gyro_StdDev_Y"                 
[60] "Freq_Body_Gyro_StdDev_Z"                 
[61] "Freq_Body_AcclMtr_Magnitude_Mean_"       
[62] "Freq_Body_AcclMtr_Magnitude_StdDev_"     
[63] "Freq_Body_AcclMtr_Jerk_Magnitude_Mean_"  
[64] "Freq_Body_AcclMtr_Jerk_Magnitude_StdDev_"
[65] "Freq_Body_Gyro_Magnitude_Mean_"          
[66] "Freq_Body_Gyro_Magnitude_StdDev_"        
[67] "Freq_Body_Gyro_Jerk_Magnitude_Mean_"     
[68] "Freq_Body_Gyro_Jerk_Magnitude_StdDev_"   
[69] "activityType"   


