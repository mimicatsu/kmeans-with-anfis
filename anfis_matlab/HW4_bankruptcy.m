% T = readtable("../bankruptcy_HW1_train.csv");
% X = T(2:end,3:end);
% y = T(2:end,2);
% X = [X,y];
% writetable(X, "data.dat")
% 
% T = readtable("../bankruptcy_HW1_test.csv");
% X = T(2:end,3:end);
% y = T(2:end,2);
% X = [X,y];
% writetable(X, "data_test.dat")



%fuzzyLogicDesigner

mam_fis = readfis('fuzzy_new.fis');
sug_fis = convertToSugeno(mam_fis);
neuroFuzzyDesigner

