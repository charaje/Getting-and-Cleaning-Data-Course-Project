## Peer-graded Assignment: Getting and Cleaning Data Course Project
Repository used to house all assets associated with the final project for the Courserea 'Getting and Cleaning Data' module 

Author: Jeff Charatan

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

## Review criteria
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.



## Deliverable Descriptions
1. README.MD
2. run_analysis.R - R script designed based on the speicifcation provided in the 'Getting and Cleaning Data Course Project' assignment.
3. codebook.md - Codebook MD file to indicate and describe all variables
4. tidy_data_set.txt - Independent data set that contains the average (mean) for each activuty and subject. 



Realized features and results:
All five instructions:

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
are realized by scipt file >>>'run_analysis.R'<<<

Further details related to realization above instructions and data processing are described in file >>>'codebook.md'<<<

Final result from last - 5th - instruction is written to text file >>>'tidy_data_set.txt'<<< using write.table() function, which contains also argument: row.names=FALSE.

Summary of delivered files:
'README.md' - this file, which should be read first

'run_analysis.R': R script file, which processing data according to instructions available at Coursera website "Peer-graded Assignment: Getting and Cleaning Data Course Project"

'codebook.md': Code book MD file to indicate and explain calculated variables and summaries

'tidy_data_set.txt': data set in text file, containing final result of last fifth instruction

License:
Only for activities related to Coursera course "Getting and Cleaning Data".
