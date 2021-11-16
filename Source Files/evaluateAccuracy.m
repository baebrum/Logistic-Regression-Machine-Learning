function accuracy = evaluateAccuracy(beta, X, y)
%EVALUATEACCURACY calculates the prediction accuracy of the learned 
%logistic regression model using the testing data 

num = length(y); % number of testing examples

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the percentage of accurately predicted examples 
%
%

total = 0;

% predict function using betas and inputs 
predicted_value = predict(beta,X);
%compute percentage of correct predicted values with actual values
for sample_i=1:num
    if y(sample_i) == predicted_value(sample_i)
        total = total + 1;
    end
end
accuracy = total/num;



% ============================================================

end