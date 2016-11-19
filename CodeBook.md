## CodeBook
The tidy data set resulting from the run_analysis.R pulls together test and training data and the relevant subject and activity metadata from the UCI HAR Dataset. Here is an example of the dataset:

\# A tibble: 86 × 2
                            measurement          avg
                                  <chr>        <dbl>
1  angle(tBodyAccJerkMean),gravityMean)  0.002647710
2           angle(tBodyAccMean,gravity)  0.007705137
3  angle(tBodyGyroJerkMean,gravityMean) -0.009219129
4      angle(tBodyGyroMean,gravityMean)  0.017683130
5                  angle(X,gravityMean) -0.496522166
6                  angle(Y,gravityMean)  0.063255174
7                  angle(Z,gravityMean) -0.054284282
8                     fBodyAcc-mean()-X -0.622761658
9                     fBodyAcc-mean()-Y -0.537493281
10                    fBodyAcc-mean()-Z -0.665033506
\# ... with 76 more rows

measurement: is factor representing each of the collected sensor values. 
avg: shows the average of these values for each subject and activity. 