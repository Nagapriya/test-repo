===================================================================
Codebook for Averages analysis of Human Activity Recognition Using Smartphones Dataset
===================================================================

The file “Averages.txt” is the output of the R script “run_analysis.R” that analyses the UCI HAR Dataset that contains human activity data collected from the Samsung Galaxy S smartphone. 

The file “averages.txt” which contains averages of all the mean and std columns for each subject and each activity.

The following are the variables in the file “Averages.txt”
==========================================================

1) Subject: An identifier of the subject who carried out the experiment (1-30).
2) Activity: Activity label – can be one of “WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING”
3) Averages by subject and activity of each of the mean and std feature variables. The averages of the feature variables form columns 3-88 of the file “Averages.txt” and are the following:
1. 1 tBodyAcc-mean()-X
2. 2 tBodyAcc-mean()-Y
3. 3 tBodyAcc-mean()-Z
4. 41 tGravityAcc-mean()-X
5. 42 tGravityAcc-mean()-Y
6. 43 tGravityAcc-mean()-Z
7. 81 tBodyAccJerk-mean()-X
8. 82 tBodyAccJerk-mean()-Y
9. 83 tBodyAccJerk-mean()-Z
10. 121 tBodyGyro-mean()-X
11. 122 tBodyGyro-mean()-Y
12. 123 tBodyGyro-mean()-Z
13. 161 tBodyGyroJerk-mean()-X
14. 162 tBodyGyroJerk-mean()-Y
15. 163 tBodyGyroJerk-mean()-Z
16. 201 tBodyAccMag-mean()
17. 214 tGravityAccMag-mean()
18. 227 tBodyAccJerkMag-mean()
19. 240 tBodyGyroMag-mean()
20. 253 tBodyGyroJerkMag-mean()
21. 266 fBodyAcc-mean()-X
22. 267 fBodyAcc-mean()-Y
23. 268 fBodyAcc-mean()-Z
24. 294 fBodyAcc-meanFreq()-X
25. 295 fBodyAcc-meanFreq()-Y
26. 296 fBodyAcc-meanFreq()-Z
27. 345 fBodyAccJerk-mean()-X
28. 346 fBodyAccJerk-mean()-Y
29. 347 fBodyAccJerk-mean()-Z
30. 373 fBodyAccJerk-meanFreq()-X
31. 374 fBodyAccJerk-meanFreq()-Y
32. 375 fBodyAccJerk-meanFreq()-Z
33. 424 fBodyGyro-mean()-X
34. 425 fBodyGyro-mean()-Y
35. 426 fBodyGyro-mean()-Z
36. 452 fBodyGyro-meanFreq()-X
37. 453 fBodyGyro-meanFreq()-Y
38. 454 fBodyGyro-meanFreq()-Z
39. 503 fBodyAccMag-mean()
40. 513 fBodyAccMag-meanFreq()
41. 516 fBodyBodyAccJerkMag-mean()
42. 526 fBodyBodyAccJerkMag-meanFreq()
43. 529 fBodyBodyGyroMag-mean()
44. 539 fBodyBodyGyroMag-meanFreq()
45. 542 fBodyBodyGyroJerkMag-mean()
46. 552 fBodyBodyGyroJerkMag-meanFreq()
47. 555 angle(tBodyAccMean,gravity)
48. 556 angle(tBodyAccJerkMean),gravityMean)
49. 557 angle(tBodyGyroMean,gravityMean)
50. 558 angle(tBodyGyroJerkMean,gravityMean)
51. 559 angle(X,gravityMean)
52. 560 angle(Y,gravityMean)
53. 561 angle(Z,gravityMean)
54. 4 tBodyAcc-std()-X
55. 5 tBodyAcc-std()-Y
56. 6 tBodyAcc-std()-Z
57. 44 tGravityAcc-std()-X
58. 45 tGravityAcc-std()-Y
59. 46 tGravityAcc-std()-Z
60. 84 tBodyAccJerk-std()-X
61. 85 tBodyAccJerk-std()-Y
62. 86 tBodyAccJerk-std()-Z
63. 124 tBodyGyro-std()-X
64. 125 tBodyGyro-std()-Y
65. 126 tBodyGyro-std()-Z
66. 164 tBodyGyroJerk-std()-X
67. 165 tBodyGyroJerk-std()-Y
68. 166 tBodyGyroJerk-std()-Z
69. 202 tBodyAccMag-std()
70. 215 tGravityAccMag-std()
71. 228 tBodyAccJerkMag-std()
72. 241 tBodyGyroMag-std()
73. 254 tBodyGyroJerkMag-std()
74. 269 fBodyAcc-std()-X
75. 270 fBodyAcc-std()-Y
76. 271 fBodyAcc-std()-Z
77. 348 fBodyAccJerk-std()-X
78. 349 fBodyAccJerk-std()-Y
79. 350 fBodyAccJerk-std()-Z
80. 427 fBodyGyro-std()-X
81. 428 fBodyGyro-std()-Y
82. 429 fBodyGyro-std()-Z
83. 504 fBodyAccMag-std()
84. 517 fBodyBodyAccJerkMag-std()
85. 530 fBodyBodyGyroMag-std()
86. 543 fBodyBodyGyroJerkMag-std()

The numbers in the beginning of each column (or feature) name indicate the column numbers in the original “X_test” and “X_train” datasets. The numbers are retained to avoid any possible confusion in the feature that is being studied.

The features prefixed by t are in the time domain, the ones prefixed by f are fast Fourier transformed data from the time domain

