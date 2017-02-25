function grad = ComputeGrad(x,y,lambda,theta)

m = length(y); % number of training examples


grad0 = (1/m) *  (x' * ((x * theta) - y));

grad1 = (1/m) *  (x' * ((x * theta) - y));

reg = (lambda/m) * theta;

grad1 = grad1 +reg;

grad1(1,:) = grad0(1,:);

grad = grad1;