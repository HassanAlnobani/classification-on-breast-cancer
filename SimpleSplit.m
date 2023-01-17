
data = readtable("breast-cancer.csv");%read the data
[r,c] = size(data);
%split the data to training and testing 
number_of_training = round(r * 2/3); 
number_of_testing = round(r * 1/3); 
number_of_features = c-1;
x = 1 : number_of_features;
y = c;              
xtrain = data((1:number_of_training),x);
ytrain = data((1:number_of_training),y);
xtest = data(number_of_training+1 : r , x);
ytest = data(number_of_training+1 : r , y);




