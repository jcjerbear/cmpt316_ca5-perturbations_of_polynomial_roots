% Class: MACM 316
% Title: Computing roots of high-degree polynomials
% Description: Computes the roots of a degree n polynomial with random
% coefficients (normally distributed)
% Instructor: Ben Adcock
% File name: RandPolyRoots.m

nmax=500; % Max polynomial degree
jp=10; % Stepsize for n

figure;

for n = jp:jp:nmax
a = randn(1,n); % Random coefficients
r = roots(a); % Compute the roots

% Plot the roots in the complex plane
plot(real(r),imag(r),'*');
axis([-2 2 -2 2]);
title(['Roots of an n x n matrix in the complex plane with n=' num2str(n)],'fontsize',14);
xlabel('Real axis','fontsize',12);
ylabel('Imaginary axis','fontsize',12);
M(n/jp) = getframe; % Capture the figure as a frame
end

% Play a move of the figures

movie(M,3,2*jp) 

% 1st argument = the movie frames
% 2nd argument = number of times to play the movie
% 3rd argument = number of frames per second