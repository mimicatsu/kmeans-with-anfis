Kmeans-with-anfis
1.	The dataset
(1) bankruptcy_HW1
(2) daimonds(predict price)
2.	Preprocessing file
(1) bankruptcy-hw3 new select
(2) daimonds-hw3 new select
3.	The Preprocessing OUTPUT dataset
(1) bankruptcy_HW1_test
(2) bankruptcy_HW1_train
(3) daimonds_HW1_test
(4) daimonds_HW1_train
------anfis(the main programming file)
(1)	HW3_bankruptcy
(2)	HW3_dimonds
(3)	HW4_bankruptcy
(4)	HW4_dimonds 
------anfis_matlab
1.	The Preprocessing OUTPUT dataset(From matlab)
(1)	bankruptcy_train_ANFIS_Output
(2)	bankruptcy_test_ANFIS_Output
(3)	bankruptcy_train_Grid_Output
(4)	bankruptcy_test_Grid_Output
(5)	dimonds_train_Grid_Output
(6)	dimonds_test_Grid_Output
2.	The main programming file
(1)	HW4_bankruptcy_matlab
(2)	HW4_dimonds_matlab

In the anfis, I use the anfis package which designed by twmeggs on the GitHub.
In the anfis_matlab, I use the matlab to do the preprocessing and get the output.

First, I reselect the features in the two preprocessing files. To decrease the computing time and loss, I used the Pearson correlation coefficient method to conduct the feature selection and finally selected 4 features in each case. Then, I export 4 output datasets and used them in the main programming file.
Second, I import the preprocessing output dataset in the main programming files and reorder the dataset. Third, I use kmeans to get the membership functions. Finally, train the model by use the anfis package, and get the report. 

After doing the above steps, I decide to use other models to train the datasets. And I also try to use MATLAB to process the ANFIS method. 
After the comparison, I found that in the bankruptcy case, the performance: AdaBoost> SGDClassifer>anfis(MATLAB_Grid partition)>anfis(twmeggs)> anfis(MATLAB_Kmeans). In the dimonds case, the performance: anfis(MATLAB_Grid partition)> SGDRegressor> anfis(twmeggs-k-means).

HW3_bankruptcy:
1.	Drop the dataset’s labels.
2.	Use Kmeans(k=2) to get the membership function.
3.	Output the membership relations number(mean/standard).
4.	Import the anfis (gaussian method)package to train the data.
5.	Predict the y_pred(if y_pred>=0.5-->1, else-->0)
6.	Calculate the evaluation criterion, and get the classification report.

HW3_dimonds:
1.	Drop the dataset’s labels.
2.	Because the data was too large, I sampled the 1/10 data.
2.	Use Kmeans(k=2) to get the membership function.
3.	Output the membership relations number(mean/standard).
4.	Import the anfis (gaussian method)package to train the data.
5.	Predict the y_pred
6.	Calculate the evaluation criteria(MAPE,MSE,RMSE,NRMSE).

HW4_bankruptcy:
1.	Use the SGDClassifer
2.	Use the AdaBoostClassifier
3.	Get the classification_report, and we found that the accuracy AdaBoost> SGDClassifer>anfis(twmeggs)

HW4_dimonds:
1.	Use the SGDRegressor
2.	Calculate the evaluation criteria(MAPE,MSE,RMSE,NRMSE).
4.	We found that the loss has decreased. Loss: SGDRegressor< anfis(twmeggs)

HW4_bankruptcy_matlab:
1.	Use the MATLAB two different ANFIS methods(kmeans /Grid partition).
2.	Get the output dataset (train/test y_pred)
3.	Use python to calculate the evaluation criterion and get the classification report.
4.	After comparing with HW3 output, I found that in the bankruptcy case, the performance: AdaBoost> SGDClassifer>anfis(MATLAB_Grid partition)>anfis(twmeggs)> anfis(Kmeans).

HW4_dimonds_matlab
1.	Use the MATLAB ANFIS method (Grid partition).
2.	Get the output dataset (train/test y_pred)
3.	Use python to calculate the evaluation criteria(MAPE,MSE,RMSE,NRMSE).
4.	After comparing with HW3 output, I found that in the diamonds case, the performance: anfis(MATLAB_Grid partition)> SGDRegressor> anfis(MATLAB_Grid partition).
