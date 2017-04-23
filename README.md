# Tidy-data-set
The script follows the following process:

1) Saving the path of main folder, train folder, train folder in path, pathtrain, pathrain variables respectively.

2) Setting the path to main folder.

3) Reading feature text file into table feature.

4) Reading activity_label text file into table activity_label.

5) Providing names to table activity_label.

6) Setting the path to train folder.

7) Reading subject_train, x_train, y_train file into subject_train, x_train, y_train tables respectively.

8) Setting the path to train folder.

9) Reading subject_train, x_train, y_train file into subject_train, x_train, y_train tables respectively.

10) Combining the test and train tables of x, y and subject to x_combine, y_combine and subject_combine respectively.

11) Changing the names of header of x_combine file based on feature table.

12) Changing the names of header of subject_combine file to subject.

13) Changing the names of header of y_combine file to Activity.

14) Combining the data of activity label to y_combine.

15) Separating the data set having mean() and std() in header to x_combine_mean and x_combine_std respectively.

16) Combining x_combine_mean, x_combine_std, y_combine and subject_combine data set into single data set of All_combine.

17) Creating a separate data set of Grouped_mean having mean o all features of All_combine data set by Activity and subject. 
