
## Data Source

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain 
activityrecognition '@' smartlab.ws

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset.


## Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.


## Dataframe Description (df7):
Dataframe diplays the mean of each listed below, grouped by activity type and subject

Variable			            Class					Description
subjectid			            Integer				Unique identifies for each of the 30 subjects in the data set
activityid			          Factor  			Indicates each of the six activities; LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
tBodyAcc-mean()-X				  Numeric				Mean of tBodyAcc-mean in the X direction
tBodyAcc-mean()-Y				  Numeric				Mean of tBodyAcc-mean in the Y direction
tBodyAcc-mean()-Z				  Numeric				Mean of tBodyAcc-mean in the Z direction
tBodyAcc-std()-X				  Numeric				Mean of tBodyAcc-std in the X direction
tBodyAcc-std()-Y				  Numeric				Mean of tBodyAcc-std in the Y direction
tBodyAcc-std()-Z				  Numeric				Mean of tBodyAcc-std in the Z direction
tGravityAcc-mean()-X		  Numeric				Mean of tGravityAcc-mean in the X direction
tGravityAcc-mean()-Y		  Numeric				Mean of tGravityAcc-mean in the Y direction
tGravityAcc-mean()-Z		  Numeric				Mean of tGravityAcc-mean in the Z direction
tGravityAcc-std()-X			  Numeric				Mean of tGravityAcc-std in the X direction
tGravityAcc-std()-Y			  Numeric				Mean of tGravityAcc-std in the Y direction
tGravityAcc-std()-Z			  Numeric				Mean of tGravityAcc-std in the Z direction
tBodyAccJerk-mean()-X			Numeric				Mean of tBodyAccJerk-mean in the X direction
tBodyAccJerk-mean()-Y			Numeric				Mean of tBodyAccJerk-mean in the Y direction
tBodyAccJerk-mean()-Z			Numeric				Mean of tBodyAccJerk-mean in the Z direction
tBodyAccJerk-std()-X			Numeric				Mean of tBodyAccJerk-std in the X direction
tBodyAccJerk-std()-Y			Numeric				Mean of tBodyAccJerk-std in the Y direction
tBodyAccJerk-std()-Z			Numeric				Mean of tBodyAccJerk-std in the Z direction
tBodyGyro-mean()-X				Numeric				Mean of tBodyGyro-mean in the X direction
tBodyGyro-mean()-Y				Numeric				Mean of tBodyGyro-mean in the Y direction
tBodyGyro-mean()-Z				Numeric				Mean of tBodyGyro-mean in the Z direction
tBodyGyro-std()-X				  Numeric				Mean of tBodyGyro-std in the X direction
tBodyGyro-std()-Y				  Numeric				Mean of tBodyGyro-std in the Y direction
tBodyGyro-std()-Z				  Numeric				Mean of tBodyGyro-std in the Z direction
tBodyGyroJerk-mean()-X		Numeric				Mean of tBodyGyroJerk-mean in the X direction
tBodyGyroJerk-mean()-Y		Numeric				Mean of tBodyGyroJerk-mean in the Y direction
tBodyGyroJerk-mean()-Z		Numeric				Mean of tBodyGyroJerk-mean in the Z direction
tBodyGyroJerk-std()-X			Numeric				Mean of tBodyGyroJerk-std in the X direction
tBodyGyroJerk-std()-Y			Numeric				Mean of tBodyGyroJerk-std in the Y direction
tBodyGyroJerk-std()-Z			Numeric				Mean of tBodyGyroJerk-std in the Z direction
tBodyAccMag-mean()				Numeric				Mean of tBodyAccMag-mean in the ) direction
tBodyAccMag-std()				  Numeric				Mean of tBodyAccMag-std in the ) direction
tGravityAccMag-mean()			Numeric				Mean of tGravityAccMag-mean in the ) direction
tGravityAccMag-std()			Numeric				Mean of tGravityAccMag-std in the ) direction
tBodyAccJerkMag-mean()		Numeric				Mean of tBodyAccJerkMag-mean in the ) direction
tBodyAccJerkMag-std()			Numeric				Mean of tBodyAccJerkMag-std in the ) direction
tBodyGyroMag-mean()				Numeric				Mean of tBodyGyroMag-mean in the ) direction
tBodyGyroMag-std()				Numeric				Mean of tBodyGyroMag-std in the ) direction
tBodyGyroJerkMag-mean()		Numeric				Mean of tBodyGyroJerkMag-mean in the ) direction
tBodyGyroJerkMag-std()		Numeric				Mean of tBodyGyroJerkMag-std in the ) direction
fBodyAcc-mean()-X				  Numeric				Mean of fBodyAcc-mean in the X direction
fBodyAcc-mean()-Y				  Numeric				Mean of fBodyAcc-mean in the Y direction
fBodyAcc-mean()-Z				  Numeric				Mean of fBodyAcc-mean in the Z direction
fBodyAcc-std()-X				  Numeric				Mean of fBodyAcc-std in the X direction
fBodyAcc-std()-Y				  Numeric				Mean of fBodyAcc-std in the Y direction
fBodyAcc-std()-Z				  Numeric				Mean of fBodyAcc-std in the Z direction
fBodyAcc-meanFreq()-X			Numeric				Mean of fBodyAcc-meanFreq in the X direction
fBodyAcc-meanFreq()-Y			Numeric				Mean of fBodyAcc-meanFreq in the Y direction
fBodyAcc-meanFreq()-Z			Numeric				Mean of fBodyAcc-meanFreq in the Z direction
fBodyAccJerk-mean()-X			Numeric				Mean of fBodyAccJerk-mean in the X direction
fBodyAccJerk-mean()-Y			Numeric				Mean of fBodyAccJerk-mean in the Y direction
fBodyAccJerk-mean()-Z			Numeric				Mean of fBodyAccJerk-mean in the Z direction
fBodyAccJerk-std()-X			Numeric				Mean of fBodyAccJerk-std in the X direction
fBodyAccJerk-std()-Y			Numeric				Mean of fBodyAccJerk-std in the Y direction
fBodyAccJerk-std()-Z			Numeric				Mean of fBodyAccJerk-std in the Z direction
fBodyAccJerk-meanFreq()-X	Numeric				Mean of fBodyAccJerk-meanFreq in the X direction
fBodyAccJerk-meanFreq()-Y	Numeric				Mean of fBodyAccJerk-meanFreq in the Y direction
fBodyAccJerk-meanFreq()-Z	Numeric				Mean of fBodyAccJerk-meanFreq in the Z direction
fBodyGyro-mean()-X				Numeric				Mean of fBodyGyro-mean in the X direction
fBodyGyro-mean()-Y				Numeric				Mean of fBodyGyro-mean in the Y direction
fBodyGyro-mean()-Z				Numeric				Mean of fBodyGyro-mean in the Z direction
fBodyGyro-std()-X				  Numeric				Mean of fBodyGyro-std in the X direction
fBodyGyro-std()-Y				  Numeric				Mean of fBodyGyro-std in the Y direction
fBodyGyro-std()-Z				  Numeric				Mean of fBodyGyro-std in the Z direction
fBodyGyro-meanFreq()-X		Numeric				Mean of fBodyGyro-meanFreq in the X direction
fBodyGyro-meanFreq()-Y		Numeric				Mean of fBodyGyro-meanFreq in the Y direction
fBodyGyro-meanFreq()-Z		Numeric				Mean of fBodyGyro-meanFreq in the Z direction
fBodyAccMag-mean()				Numeric				Mean of fBodyAccMag-mean
fBodyAccMag-std()				  Numeric				Mean of fBodyAccMag-std
fBodyAccMag-meanFreq()		Numeric				Mean of fBodyAccMag-meanFreq
fBodyBodyAccJerkMag-mean()Numeric				Mean of fBodyBodyAccJerkMag-mean
fBodyBodyAccJerkMag-std()	Numeric				Mean of fBodyBodyAccJerkMag-std
fBodyBodyAccJerkMag-meanFreq()	Numeric				Mean of fBodyBodyAccJerkMag-meanFreq
fBodyBodyGyroMag-mean()		Numeric				Mean of fBodyBodyGyroMag-mean
fBodyBodyGyroMag-std()		Numeric				Mean of fBodyBodyGyroMag-std
fBodyBodyGyroMag-meanFreq()			Numeric				Mean of fBodyBodyGyroMag-meanFreq
fBodyBodyGyroJerkMag-mean()			Numeric				Mean of fBodyBodyGyroJerkMag-mean
fBodyBodyGyroJerkMag-std()			Numeric				Mean of fBodyBodyGyroJerkMag-std
fBodyBodyGyroJerkMag-meanFreq()	Numeric				Mean of fBodyBodyGyroJerkMag-meanFreq



