
Task 1: Download the file and unzip it.
> url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
> f<- file.path(getwd(), "project.zip")
> download.file(url, f, method="curl")
> unzip(f)
> list.files()
1] "activity_labels.txt" "features_info.txt"   "features.txt"        "README.txt"          "test"               
[6] "train"
>list.files("train")
[1] "Inertial Signals"  "subject_train.txt" "X_train.txt"       "y_train.txt" 
>list.files("test")
 "Inertial Signals" "subject_test.txt" "X_test.txt"       "y_test.txt" 
# Designating a filepath for both train and test folders
fsubtest <- file.path(f, "test", "subject_test.txt")
fsubtrain <- file.path(f, "train", "subject_train.txt")

# reading the text files as subtest and subtrain
library(data.table)
subtest<- read.table(fsubtest) #  or , could also be read using  fread.  subtest1 <-  fread(fsubtest)
subtrain <- read.table(fsubtrain) #  subtrain1 <- fread(fsubtest)

# reading the activity labels files to  actrain and actest
factest <- file.path(f, "test", "y_test.txt")
actest <- read.table(factest) or actest1 <- fread(factest)
factrain <- file.path(f, "train". "y_train.txt")
actrain <- read.table(factrain) or actrain1 <- fread(factrain)

# reading the data tables in train and test files
ftest <- file.path(f, "test", "X_test.txt")
test <- read.table(ftest)
ftrain <- file.path(f, "train", "X_train.txt")
train <- read.table(ftrain)

Task 2: 
colnames(actest) <- "activities"
> colnames(subtest) <- "subject"
> colnames(actrain) <- "activities"
> colnames(subtrain) <- "subject"
> testcomb <- cbind(subtest, actest, test)
> traincomb <- cbind(subtrain, actrain, train)
> data <- rbind(testcomb, traincomb)

Task 3: extracting only the mean and standard deviation:
> ffeau <- file.path(getwd(), "features.txt")
> feau <- read.table(ffeau)
> meanstd <- feau[grepl("mean|std", feau$V2),]
> colnames(meanstd) <- c("code", "names")
> temp <- data[,seq(3, ncol(data))]
>meanstd <-  temp[meanstd$code]

Task 4 : Uses descriptive activity names to name the activities in the data set
label <- read.table(file.path(getwd(), "activity_labels.txt"))
colnames(label) <- c("activity_num", "activity_name")

Task 5:Appropriately labels the data set with descriptive variable names.
data <- merge(label, data, by.y = "activities", by.x= "activity_num", all=TRUE)





