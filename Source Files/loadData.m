function [X_train, y_train, X_test, y_test] = loadData()
%   LOADDATA imports data downloaded from 
%   http://networkrepository.com/pima-indians-diabetes.php
%   and splits the dataset into two sets: training set and testing set
%

 % ====================== YOUR CODE HERE ======================
    % Instructions: Import spreadsheets data, extract the first
    % 8 columns and store them as X. Extract the last column and 
    % store it as y. 
    %
    % Randomly pick 70% of the data examples as the training set and the 
    % the rest as the testing set
    %
    % Hint: You might find the 'readtable' and 'table2array' functions useful.
    %

% reads excel into table
table = readtable("pima-indians-diabetes.csv","VariableNamingRule", 'preserve');
X = table2array(table(:,1:8)); % first 8 columns
y = table2array(table(:,end)); % last column

[rows, columns] = size(X);
separate_sample_by = 0.7; % 70 percent
random_sample = randperm(rows);

X_train = X(random_sample(1:round(separate_sample_by*rows)),:);
X_test = X(random_sample(round(separate_sample_by*rows)+ 1:end),:);
[rows, columns] = size(y);
y_train = y(random_sample(1:round(separate_sample_by*rows)),:);
y_test = y(random_sample(round(separate_sample_by*rows)+1:end),:);

% ============================================================
end