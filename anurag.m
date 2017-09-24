clear ; close all ; clc ;

%loading data

data = load('data1.txt');
X = data(:,[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]);
y = data(:,21);
 

%% ============ Part 1: Compute Cost and Gradient ============

[m ,n]= size(X);


X = [ones(m,1) X];

initial_theta = zeros((n+1),1);


% Compute and display initial cost and gradient

[cost, grad] = costFunction(initial_theta ,X ,y) ;

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);



%% ============= Part 2: Optimizing using fminunc  =============


%  Setting up options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);
 
%  Running fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = ...
    fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);



fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);




%%==========================Predicting for gender================


recording()
 
 
pr = 1 ./ (1 + exp (-(feaarr * theta)));
 
 
fprintf('Probability = %f\n', pr);
 
if (pr >= 0.5)
   boy();
 
else
  
   girl(); 
 
end





