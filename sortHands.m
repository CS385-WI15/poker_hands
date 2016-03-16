function [Y,Xf,Af] = sortHands(X,~,~)

%sort hands inplace
for i= 1:length(X(:,1))
    X(i,:) = sortHand(X(i,:));
end

Y = X;