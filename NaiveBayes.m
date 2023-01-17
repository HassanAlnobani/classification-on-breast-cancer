data = readtable("breast-cancer.csv");

[r, c] = size(data);

number_of_featcher = c-1;

x = data(:, 1: number_of_featcher);

y = data(:, c);
Mdl = fitcnb(x, y);
%plotPartialDependence(Mdl,3);
err = loss( Mdl , x , y );
%ytest = table2cell(ytest);
[m,order] = confusionmat(ytest,label);
disp(m);
