Kmeans-with-anfis
1.	The dataset
(1)	bankruptcy_HW1
(2)	daimonds(predict price)
2.	Preprocessing file
(1)	bankruptcy-hw3 new select
(2)	daimonds-hw3 new select
3.	The Preprocessing OUTPUT dataset
(1)	bankruptcy_HW1_test
(2)	bankruptcy_HW1_train
(3)	daimonds_HW1_test
(4)	daimonds_HW1_train
------anfis(the main programming file)
1.	HW3_bankruptcy
2.	HW3_dimonds
I use the anfis package which designed by twmeggs on the GitHub.

First, I reselect the features in the two preprocessing files. To decrease the computing time and loss, I used the Pearson correlation coefficient method to conduct the feature selection and finally selected 4 features in each case. Then, I export 4 output datasets and used them in the main programming file.
Second, I import the preprocessing output dataset in the main programming files and reorder the dataset.
HW3_bankruptcy:
1.	Drop the dataset’s labels.
2.	Use Kmeans(k=2) to get the membership function.
3.	Output the membership relations number(mean/standard).
4.	Import the anfis (gaussian method)package to train the data, and get the current score.
5.	Predict the y_pred(if y_pred>=0.51, else0)
6.	Calculate the evaluation criterions.
HW3_dimonds:
1.	Drop the dataset’s labels.
2.	Because the data too large, I sampling the 1/10 data.
2.	Use Kmeans(k=2) to get the membership function.
3.	Output the membership relations number(mean/standard).
4.	Import the anfis (gaussian method)package to train the data, and get the current score.
5.	Predict the y_pred
6.	Calculate the evaluation criterions.
