num_configurations = height(configurations);
num_spins = width(configurations);
array1=configurations';
solution=zeros(num_spins,num_spins);
beq=0;
A=-diag(ones(1,num_spins));
b=zeros(num_spins,1);
x0=zeros(1,num_spins);
options = optimoptions(@fmincon,'Algorithm','sqp','MaxFunEvals',300000);