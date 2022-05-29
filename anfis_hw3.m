% T = readtable("bankruptcy_HW1_train");
% X = T(2:9262,3:end);
% y = T(2:9262,2);
% X = [X,y];
% writetable(X, "data.dat")

% fuzzyLogicDesigner

mam_fis = readfis('fuzzy.fis');
sug_fis = convertToSugeno(mam_fis);
neuroFuzzyDesigner


