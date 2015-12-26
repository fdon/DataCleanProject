# DataCleanProject

Raw data can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Script *run_analysis.R* executes the following **steps** to analyze the raw data and generate file *tidyDataset.txt*

	1.	read feature names; adjust the featureNames vector so as to *make variable names more descriptive*

	2.	read training set

	3.	read test set

	4.	*merge training and test sets*

	5.	*extract measurements on mean and standard deviation*

	6.	Label the data set with descriptive variable names

	7.	*Use descriptive activity names*

	8.	create a *tidy dataset with the average of each variable for each activity and each subject*

	9.	save tidyDataset to a file
	
	
We can see that the tidyDataset is indeed "tidy" in the sense defined in Hadley Wickham's Tidy Data [paper](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html):

* Each variable forms a column.

* Each observation forms a row.

* Each type of observational unit forms a table.


David Hood's [blog post](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/) also gives a useful checklist to verify the tidyness of the result:

* Does it have headings so I know which columns are which?
* Are the variables in different columns (depending on the wide/long form)?
* Are there no duplicate columns?
	
