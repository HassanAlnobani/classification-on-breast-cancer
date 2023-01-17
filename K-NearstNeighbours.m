
data = readtable("breast-cancer.csv"); %read data file

[r,c] = size(data); % Find the size of the data set r = rows c = columns

 
%KNN has no training set (all dataset)

number_of_features = c-1; %4

 
x = data(:,1 : number_of_features);

y = data(:,c);  

k=3; %number of K

Mdl = fitcknn(x,y,'NumNeighbors',k); % function to fit the data

label = predict(Mdl,x); %predict function to predict the class

disp(label);

err = loss(Mdl , x , y);% function loss to show the error rate

% confusion matrix code
ytest = table2cell(y);

[m,order] = confusionmat(ytest,label);

 disp(m);
