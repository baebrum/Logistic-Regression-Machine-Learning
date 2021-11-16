function [l, grad] = likelihoodFunction(beta, X, y)
%LIKELIHOODFUNCTION Computes log likelihood using beta as the parameter 
%   for logistic regression and the gradient of the log likelihood function
%   w.r.t. to the parameters.

% You need to return the following variables correctly 
l = 0; 
grad = zeros(size(beta)); 

% ====================== YOUR CODE HERE =====================
% Instructions: Compute the log likelihood (l) of a particular choice of beta.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the log likelihood function w.r.t. each 
%               parameter in beta
%
% Note: grad should have the same dimensions as beta
%

for sample_i = 1:height(X)
    % log likelihood function
    pi_i = 1/(1+exp(-1*(X(sample_i,:)*beta)));
    l = l + y(sample_i)*log(pi_i) + ( 1-y(sample_i) )*log(1-pi_i);
    % computing partial derivatives
    grad = grad +  ( y(sample_i) - pi_i )*X(sample_i,:)';
end

% =============================================================

end
