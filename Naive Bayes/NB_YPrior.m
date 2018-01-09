function [p] = NB_YPrior(yTrain)
%NP_YPRIOR Computes the prior probability that the class
% label is 1: P[Y = 1].
%
% inputs:
%   yTrain - An [n x 1] vector containing the class labels
%     for the training documents. yTrain(i) is 1 if the
%     i-th document belongs to The Economist or 2 if it
%     belongs to The Onion.
%
% output:
%   p - The prior probability that the class label is 1.

% TODO: implement me!
p = 0;
n=size(yTrain,1);
N0=0; N1=0;
for i=1:n
   if yTrain(i)==0
        N0=N0+1;
     else N1=N1+1;
    end
end
 p(1)=N0/n;
 p(2)=N1/n;
 p=transpose(p);
end


