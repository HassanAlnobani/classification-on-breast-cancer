data = readtable("breast-cancer.csv");
[r, c] = size(data);
number_of_features = c-1;
 x = 1 : number_of_features;
 y = c;

Data = data((1:r),x);
Class = data((1:r),y);

Mdl = fitctree(Data,Class);
% Perform 10-fold cross validation
cv = cvpartition(Class,'KFold',10);

% Loop through each fold
for i = 1:cv.NumTestSets %10
    % Get the training and test sets for this fold
    trIdx = cv.training(i);
    teIdx = cv.test(i);

    % Train the classifier on the training set
    Mdl = fitctree(Data(trIdx,:),Class(trIdx));
    dt = ClassificationTree.fit(meas(trIdx,:),species(trIdx));
%     % Test the classifier on the test set
     pred = predict(Mdl,Data(teIdx,:));
%     % Compute the classification error for this fold
[m,order] = confusionmat(Class(teIdx,:),pred);
disp(i);
disp(m);
end

