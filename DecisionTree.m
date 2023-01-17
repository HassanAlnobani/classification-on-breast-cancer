
data = readtable("breast-cancer.csv");
pause();
[r, c] = size(data);

number_of_featcher = c-1;

x = data(:, 1: number_of_featcher);

y = data(:, c);
Mdl = fitctree(x, y);
view(Mdl);
view(Mdl, 'mode', 'graph');
err = loss( Mdl , x , y );
label = predict(Mdl,xtest);
ytest = table2cell(ytest);
[m,order] = confusionmat(ytest,label);
disp(m);