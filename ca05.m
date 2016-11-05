% Assignment: MACM 316 Computing Assignment 5
% Title: Perturbations of polynomial roots
% Description: Computes the perturbed roots of a degree n polynomial with random
% coefficients (normally distributed)
% Author: Jerry Chen
% File name: ca05.m

maxDegree = 20; % Max polynomial degree
stepSize = 10; % Stepsize for n

figure;
ms = 5;
n = 100;


%for n = stepSize:stepSize:maxDegree
rcoeff = randn(1,n); % Random coefficients
perturbcoeff = rcoeff;
radius = 1:1:10;
colors = jet(length(radius));

for radius = 1:1:10
    for theta = 0:pi/200:2*pi % 400 iterations
        perturbcoeff(1) = rcoeff(1)*radius*exp(sqrt(-1)*theta)
        pertRoot = roots(perturbcoeff) % Compute the roots
        
        % Plot the roots in the complex plane
        % plot(real(pertRoot),imag(pertRoot),'.','MarkerSize',ms);
        plot(real(pertRoot),imag(pertRoot),'.','Color',colors(radius,:),'MarkerSize',ms);
        hold on
    end
end
% axis([-2 2 -2 2]);
title(['Roots of a perturbed polynomial of degree n=' num2str(n)],'fontsize',14);
xlabel('Real axis','fontsize',12);
ylabel('Imaginary axis','fontsize',12);
% M(n/jp) = getframe; % Capture the figure as a frame
%end

% Play a move of the figures

% movie(M,3,2*jp) 

% 1st argument = the movie frames
% 2nd argument = number of times to play the movie
% 3rd argument = number of frames per second