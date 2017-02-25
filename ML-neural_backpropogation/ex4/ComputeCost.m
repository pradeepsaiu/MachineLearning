function J = ComputeCost(X, y, theta1,theta2)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

[a,b] = predict(theta1,theta2,X);

x = (- (y .* log(b)) ) - ( (1-y) .* log(1-b) ) ;

x = sum(x(:));

J = (1/(m))*x ;


% =========================================================================

end
