function [error] = ClassificationError(yHat, yTruth)
% CLASSIFICATIONERROR Computes the classification error.
%
% inputs:
%   yHat - An [m x 1] vector of predicted class labels,
%     where yHat(i) is the predicted class label for the
%     i-th document (the i-th row of XTest).
%   yTruth - An [m x 1] vector of the true class labels.
%
% output:
%   error - A scalar containing the proportion of entries
%     that the given vectors disagree on.
% TODO: implement me!
error = 0;
m=size(yTruth,1);
for i=1:m
if yHat(i)~= yTruth(i)
error=error+1;
end
end 
error=error/m;
end

