function J = ComputeCost(x,y,lambda,theta)


m = length(y); % number of training examples

a=(( x * theta) - y);

a= a.^2;

theta = theta(2:end,:);

reg = ( (lambda/(2*m))* (sum(theta .^ 2))) ;

J = ((1/(2*m)) * ( sum(a) )) + reg;


