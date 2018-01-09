function [D] = NB_XGivenY(XTrain, yTrain)
% NP_XGIVENY Estimates the probability that a word is
% observed given (conditioned on) the class label.
%
% inputs:
%   XTrain - An [n x V] matrix where each row describes
%     which words are present in a particular document.
%     XTrain(i, j) is 1 if word j appears in the i-th
%     document.
%   yTrain - An [n x 1] vector containing the class labels
%     for the training documents. yTrain(i) is 0 if the
%     i-th document belongs to The Economist or 1 if it
%     belongs to The Onion.
%
% output:
%   D - A [2 x V] matrix, where D(i, j) is an estimate of
%     the probability that word j is in a document with class
%     label i-1: P[X_j = 1 | Y = i-1].

V = size(XTrain, 2);
D = zeros(2, V);
n=size(XTrain,1);
N0=0;N1=0;
for i=1:n
if yTrain(i)==0 
  N0=N0+1;
  for j=1:V
    if XTrain(i,j)==1
       D(1,j)=D(1,j)+1;
     end
   end
  else 
       N1=N1+1;
       for j=1:V
         if XTrain(i,j)==1
         D(2,j)=D(2,j)+1;
         end
       end
 end
  end
D(1,:)=(D(1,:)+1)/(N0+1);
D(2,:)=(D(2,:)+1)/(N1+1);
% TODO: implement me!
end
