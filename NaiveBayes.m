data = readtable("breast-cancer.csv");%read data file

[r, c] = size(data);% Find the size of the data set r = rows c = column

number_of_featcher = c-1;

x = data(:, 1: number_of_featcher);

y = data(:, c);

Mdl = fitcnb(x, y);% function to fit the data

err = loss( Mdl , x , y );% function loss to show the error rate

label = predict(Mdl,x);%predict function to predict the class

% confusion matrix code
ytest = table2cell(y);
[m,order] = confusionmat(ytest,label);
disp(m);
