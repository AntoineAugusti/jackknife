clear all;
close all;

moyenne = 10;
variance = 6;
n = 20;

data= randn(n,1).*sqrt(variance) .+ moyenne;

varianceTh = var(data)
varianceEst = sum((data .- moyenne).^2)/n

%varianceJackknife
dataech = zeros(n-1);
for i=1:n
	dataech = [data(1:i-1); data(i+1:end)];
	pseudoval(i) = n*varianceEst - (n-1) * sum((dataech .- mean(dataech)).^2)/(n-1);
end

varianceJackknife = mean(pseudoval)

