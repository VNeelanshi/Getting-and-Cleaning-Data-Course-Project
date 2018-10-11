# This file contains information about the dataset (.txt file)
>* x_train, x_test, y_train, y_test are the training and test samples loaded from the files.
>* subject_train and subject_test contain the subjects that are trained.
>* x and y contain the merged datasets of [x_train, x_test] and [y_train,y_test] respectively.
>* mergedData contains the required combined dataset mentioned in question 1.
>* extractVar is the variable that contains the required features only i.e. mean and std related data.
>* features contains the activity_label.txt's variable headings.

tidyData contains the mean of the required data entries and it is then stored in a file called tinyData.txt

Subject column is numbered from 1 to 30 and the activity column has 6 different specifications as mentioned below.
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
>* Subject - ID of the person taking the test
>* Activity - The activity that was being performed during the test.
