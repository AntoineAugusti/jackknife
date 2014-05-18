clear all;
close all;

moyenne = 100;
variance = 5;
n = 100;

data= randn(n,1).*sqrt(variance)+moyenne;

varianceTh=var(data)
varianceEst = sum((data - moyenne).^2)/n

%varianceJackknife
dataech = zeros(n);
for i=1:n-1
	dataech = [data(1:i-1); data(i+1:end)];
	moyenneEch = mean(dataech);
	varianceEch = 0;
	for j=1:n-1
		varianceEch = varianceEch+(dataech(j) - moyenneEch).^2;
	end
	varianceEch =  varianceEch/(n-1);
	pseudoval(i) = n*varianceEst - (n-1) *varianceEch;
	pseudovalTh(i) = n/(n-1)*(data(i)-mean(data)).^2;
end


varianceJackknife = mean(pseudoval)