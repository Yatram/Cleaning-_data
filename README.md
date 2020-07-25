###Data Cleaning 

A set of data was extracted from archive.ics.edu, which contains observations of individuals who were monitored by smarth phones, when carrying out a catalogue of activities.
The purpose is to manage the different files in order to work on cleaning and ordering the data to create a new set of ordered data.

libraries to be used 

-library(dplyr).

Data needed 

1.- X_test.tx

2.- Y_test.tx

3.- X_train.tx

4.- Y_train.tx

5.- subject_test.tx

6.- subject_train.tx

7.- features.tx

8.- activity_labels.txt


This files can you  foun  in :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Description script  

The first step in working with the datasets is to load 
the files described above.

los archivos estan asignados de la siguiente manera:

training.x <- X_train

training.y <- Y_train

sub.train <- subject_train

test.x <- X_test

test.y <- Y_test

sub.test <- subject_test

feat <- features

lab <- activity_labels


The first thing that was done before starting with the 
first step was to see the content of the loaded data, 
to see what relation it had. Then we started by assigning 
the names of the columns of the training.x and test.x files.

We added to the same dataframes a column id_act, which will
contain the records of the ids of the column of training.y 
and test.y to the respective dataframes.


We do the same to add to training.x and test.x, a new variable
that will contain the records of the subject_train and 
subject_test files respectively.

We create a variable to store the combination of the two
dataframes called df.complete, this applying the function 
rbin() to combine the lines of the two dataframes.


Now we apply the grep() function to extract all the names
of the variables from which the mean and standard deviation
were taken and stored in two variables p and q,
and these two are stored in a third variable called n 
and then with the select() function we can extract the
variables with their respective observation units.

Finally we pass the dataframe df.complete to the variable
e to keep the original one without modifications, to be able
to add the labels of the respective id's of the activities 
that each individual made, we apply the function merge (),
which will join the labels of the activities with their 
respective id in the dataframe e.

Then we only apply a select(), where we pass as parameters
id_act, name_act, subject and p, where we store the vector
of the names of the variables to which the average was applied,
for each reading of the original variables.


