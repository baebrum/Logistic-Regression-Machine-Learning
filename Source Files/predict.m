function p = predict(beta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters beta
%   p = PREDICT(beta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if probability >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%

% using sigmoid function compare our value with threshold
for sample_i = 1:m
    if (sigmoid(X(sample_i,:)*beta) < 0.5)
        p(sample_i) = 0;
    else
        p(sample_i) = 1;
    end
end


% =========================================================================


end
