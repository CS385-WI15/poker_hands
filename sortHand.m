function [Y,Xf,Af] = sortHand(X,~,~)

% 5 card hand
a = sortrows(X');

Y = reshape(a', 5, 1)';
