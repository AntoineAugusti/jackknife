clear all;
close all;
mu = 2;
sigma = 1;
nbEchantillons = 20;
loiNormale = normrnd(mu, sigma, 1, nbEchantillons);
disp(['** La moyenne de la loi normale est de : ', num2str(mean(loiNormale))]);

% Calcul des moyennes partielles
moyennesPartielles = [];
for i=1:nbEchantillons
	matriceTest = loiNormale;
	% On ne prend pas le ième élement
	matriceTest(i) = [];
	moyennesPartielles = [moyennesPartielles mean(matriceTest)];
	disp(['Moyenne partielle sans le ', int2str(i), 'ème élément : ', num2str(mean(matriceTest))]);
end

disp(['** La moyenne partielle est de : ', num2str(mean(moyennesPartielles))]);