## GandC_project
Project of getting and cleaning the data
The sample involves as mentioned in the project task
```
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
```
##In order to execute those above tasks, 
```
1. respective data of UCI wearable computing exercises were downoaded from the link  <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
2. unzipped 
3. For each test and train datasets, their subject, activities and 
test data were read using read.table and binded using column binding (cbind)
4. both test and training datasets were merged using row bind(rbind) 
5. Respective column names were properly named
6. Using grepl and regex, only the standard deviation and mean data were extracted
7. using colnames function, the data  columns were labeled properly
8. the same colnames function along with subsetting operations were used to name 
the variable naming of the whole dataset
9. A tidy data was generated using tidyr package using the melt and dcast functions
10. atlast using write.table, the output file was generated in the working directory 
and uploaded according the instructions of the assignment
```
