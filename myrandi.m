function [myans] = myrandi(n)
% The function generates a positive integer of length n
% The input should be a positive integer
% The ouput is a string and it contains the digits of the integer

% Create a for loop for k from 1 to n with step 1
for k=1:1:n 
    % Generating random integer values from 0 to 9 for a_1 to a_k 
    a(k)=randi([0,9]); 
    % The first digit should not be zero
    a(1)=randi([1,9]);
end

% Show the output from all the iterations of the loop
c= a(1:k); 
% Convert the output to a string containing a_1 to a_k
myans=num2str(c); 
% Eliminate the space between the digits in the string
myans=strrep(myans, ' ', '');
end