function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% aux varaibles

% Normalize X
%avg = (sum(X)/m);
%rang = max(max(X)) - min(min(X)); 
%normX = ((X-avg)/rang);

% Normalize Y
%avg = (sum(y)/m);
%rang = max(max(y)) - min(min(y)); 
%normY = ((y-avg)/rang);

normX = X;
normY = y;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% h function
h = normX*theta;

J = sum((h - normY).^2);
J = J/(2*m);

% =========================================================================

end
