
## Saving the path for later use in varailbles
path <- "C:/Users/Rajat/Documents/GitHub/Tidy-data-set/Tidy-data-set/getdata_2Fprojectfiles%2FUCI HAR Dataset"
pathtest <- "C:/Users/Rajat/Documents/GitHub/Tidy-data-set/Tidy-data-set/getdata_2Fprojectfiles%2FUCI HAR Dataset/test"
pathtrain <- "C:/Users/Rajat/Documents/GitHub/Tidy-data-set/Tidy-data-set/getdata_2Fprojectfiles%2FUCI HAR Dataset/train"

##Setting the main folder path
setwd(path)

##Loadiing the features text file
feature <- read.table("features.txt")

##Loading the activity label file
activity_labels <- read.table("activity_labels.txt")

##Giving the names of activity_label data table
names(activity_labels) <- c("Activity" ,"activity_labels")

##Setting the path to test folder
setwd(pathtest)

##Loading the subject_test file
subject_test <- read.table("subject_test.txt")

##Loading the x_test file
x_test <- read.table("X_test.txt")

##Loading the y_test file
y_test <- read.table("y_test.txt")

##Setting the path to test folder
setwd(pathtrain)

##Loading the subject_train file
subject_train <- read.table("subject_train.txt")

##Loading the x_train file
x_train <- read.table("X_train.txt")

##Loading the y_train file
y_train <- read.table("y_train.txt")

##Combing the test and train data set for subject tables
subject_combine <- rbind(subject_test,subject_train)

##Combing the test and train data set for x tables
x_combine <- rbind(x_test,x_train)

##Combing the test and train data set for y tables
y_combine <- rbind(y_test,y_train)

##Changing the names of header based on featuere text file
names(x_combine) <- feature$V2

##Changing the name of variable to subject
names(subject_combine) <- "subject"

##Changing the name of variable to Activity
names(y_combine) <- "Activity"

##Populating the data of activity name against the number with the help of activity_label filena
y_combine <- inner_join(y_combine,activity_labels , by = "Activity")

##Extracting the data having mean and saving in x_combine_mean file
x_combine_mean <- x_combine[ grepl(c("mean()"),names(x_combine), fixed  = TRUE) ]

##Extracting the data having std and saving in x_combine_std file
x_combine_std <- x_combine[ grepl(c("std()"),names(x_combine), fixed  = TRUE) ]

##Combining all the data set into 1 data set
All_combine <- cbind(x_combine_mean,x_combine_std,subject_combine,y_combine)

##Creating a second data set having means by subject and activity
Grouped_mean <- aggregate(All_combine[,1:66],All_combine[,c(67,69)], FUN = mean)

