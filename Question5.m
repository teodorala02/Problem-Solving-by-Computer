T=[]; %initilasing a vector
for N=10:10:50 %for N from 10 to 50 digits with step 10
t=0; %setting t to zero to store the outputs from the for loop
for k=1:100 %for doing 100 multiplications
    a=myrandi(N);
    b=myrandi(N);
    tic;vedicmultiply(a,b);
    t=t+toc;% store the time for doing 100 multiplications of two integers
    %with number of digits from 10 to 50 with step 10
end
av=t/100; %find the average time to do one multiplication of every t from above
T=[T,av];%store all these average times in a vector
end
T;
N=[10:10:50];
plot(N,T,'r-*')
title('Average time of multiplying two integers depending on their number of digits');
xlabel('N - the number of digits of the two integers') ;
ylabel('T - the average time of performing the multiplication') ;
print -depsc2 myfig.eps