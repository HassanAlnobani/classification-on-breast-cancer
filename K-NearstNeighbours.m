
data = readtable("breast-cancer.csv"); %read data file

[r,c] = size(data); % Find the size of the data set r = rows c = 5

 
%KNN has no training set (all dataset)

number_of_features = c-1; %4

 
x = data(:,1 : number_of_features);

y = data(:,c);  

k=3;

Mdl = fitcknn(x,y,'NumNeighbors',k); % last parameter for K

label = predict(Mdl,x); %predict function to predict the class

disp(label);

err = loss(Mdl , x , y);

% ytest = table2cell(y);

%[m,order] = confusionmat(ytest,label);

% disp(m);
