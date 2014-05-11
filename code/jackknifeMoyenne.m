clear all;
close all;
mu = 2;
sigma = 1;
echantillons = [62 78 79 80 82 82 83 85 87 91 96 97 97 97 101 120 135 180 270 400];
nbEchantillons = length(echantillons);

% Calcul des moyennes réduites
moyennesReduites = [];
for i=1:nbEchantillons
	echantillonReduit = echantillons;
	% On ne prend pas le ième élement
	echantillonReduit(i) = [];
	moyennesReduites = [moyennesReduites mean(echantillonReduit)];
	disp(['Moyenne partielle sans le ', int2str(i), 'ème élément : ', num2str(mean(echantillonReduit))]);
end
tableau = [echantillons' moyennesReduites'];
tableau

disp(['* La moyenne des échantillons : ', num2str(mean(echantillons))]);
disp(['* La moyenne des moyennes réduites est de : ', num2str(mean(moyennesReduites))]);
disp(['* Intervalle de confiance de 100 % sur les moyennes réduites : [', num2str(moyennesReduites(end)), '; ', num2str(moyennesReduites(1)), ']'])
disp(['* Intervalle de confiance de 90 % sur les moyennes réduites : [', num2str(moyennesReduites(end-1)), '; ', num2str(moyennesReduites(2)), ']'])