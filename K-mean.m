
data = readtable("breast-cancer clustering.csv"); 
[r,c] = size(data); % Find the size of the data set r = rows c = 5
disp(data)

X = meas(:,3:4);
X
e

figure;
plot(X(:,1),X(:,2),'K*','MarkerSize',5);
title 'Fisher''s Iris Data';
xlabel 'Petal Lengths (cm)'; 
ylabel 'Petal Widths (cm)';

rng(1); % For reproducibility
[idx] = kmeans(X,3);