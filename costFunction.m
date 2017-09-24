function [J, grad] = costFunction(theta, X, y)

m = length(y); % number of training examples

% returning some default variables
J = 0;
grad = zeros(size(theta));




h_of_x = 1 ./ (1 + exp (-(X * theta)));

J = 1 / m * sum( -1 * y' * log(h_of_x) - (1-y') * log(1 - h_of_x) );

grad = 1 / m * (X' * (h_of_x - y));


end