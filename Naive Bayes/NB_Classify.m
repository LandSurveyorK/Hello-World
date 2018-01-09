function [yHat] = NB_Classify(D, p, XTest)
% NP_CLASSIFY Predicts the class labels for some given
% test input.
%
% inputs:
%   D - A [2 x V] matrix, where D(i, j) is an estimate of
%     the probability that word j in a document with class
%     label i-1 (the output of NB_XGivenY).
%   p - A scalar characterizing the prior probability that
%     the class label is 1 (the output of NB_YPrior).
%   XTest - An [m x V] matrix where each row describes
%     which words are present in a particular *test*
%     document. XTest(i, j) is 1 if word j appears in the
%     i-th document.
%
% output:
%   yHat - An [m x 1] vector of predicted class labels,
%     where yHat(i) is the predicted class label for the
%     i-th document (the i-th row of XTest).
m = size(XTest, 1);
V=size(XTest,2);
% TODO: implement me!
yHat = zeros(m, 1);
for i=1:m
    C0=zeros(V+1,1);
    C1=zeros(V+1,1);
    C0(V+1)=log(p(1));
    C1(V+1)=log(p(2));
    for j=1:V
       if XTest(i,j)==1 
          C0(j)=log(D(1,j));
          C1(j)=log(D(2,j));
        else 
           C0(j)=log(1-D(1,j));
           C1(j)=log(1-D(2,j));
        end
     end     
   if  logProd(C0)>logProd(C1)
       yHat(i)=0;
       else 
       yHat(i)=1;
   end    
end
end

