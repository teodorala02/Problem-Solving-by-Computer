function [myans] = vedicmultiply (a, b)
% vedicmultiply computes the product a*b
% a and b are input as strings
% myans is a list containing all the digits of the answer

n=length(a); %defining length of a
m=length(b); %defining length of b
x=sym('x');%defining a symbolic variable x to use for the polynomials
%Generating the polynomial version of the first number by for loop from its first to last digit 
firstn=0;
for k=1:n
    firstn=firstn+a(k)*(x^(n-k));
end
secondn=0;
for i=1:m
    secondn=secondn+b(i)*(x^(m-i));%same for the second number
end
p=expand(firstn*secondn);%multiplying out the polynomials resulting in another one
c=sym2poly(p);%collecting the coefficient in a vector from the first one to the last one
d=length(c);%assigning a value to the length of the vector

%Creating a while loop for repeating a calculation until all of the numbers in the vector becomes less than or equal to 9
while any(c>9)  
for z=1:d
   reminder(z)=mod(c(z),10);%Calculating the reminder of all the coeff in c after dividing by 10
   quotient(z)=fix(c(z)/10);%Calculating the integer part of all the coeff in c after dividing by 10
end

d=d+1;%Adding additional space for the reminder of the last digit when dividing by 10
carries =reminder(1:(z-1))+quotient(2:z);%adding the reminder and the integer part to deal with the carries
carries(end+1)=reminder(z);%putting modulo 10 of the last digit on last place in the vector
c1=[quotient(1), carries]; %putting the integer part of the first digit when dividing by 10 on the first place in the vector
c=c1(1:z+1);%updating the vector with the digits of the output needed
end
myans=num2str(c); %converting the vector to string
myans=strrep(myans, ' ', ''); %removing the space between the digits in the string
myans=str2sym(myans); %convert to symbolic to remove possible zeros at the beginning of the string
myans=string(myans);%convert back to string
end





