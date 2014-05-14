clear all;
close all;

moyenne = 10;
variance = 6;
n = 500;

data= randn(n,1).*sqrt(variance)+moyenne;

varianceTh=var(data)
varianceEst = sum((data - moyenne).^2)/n

%varianceJackknife
dataech = zeros(n-1);
for i=1:n
	dataech = [data(1:i-1); data(i+1:end)];
	moyenneEch = mean(dataech);
	varianceEch = 0;
	for j=1:n-1
		varianceEch = varianceEch+(dataech(j) - moyenneEch).^2;
	end
	varianceEch =  varianceEch/(n-1);
	pseudoval(i) = n*varianceEst - (n-1) *varianceEch;
end

varianceJackknife = mean(pseudoval)

