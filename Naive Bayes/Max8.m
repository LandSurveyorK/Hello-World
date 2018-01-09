function [W] = Max8(Vocabulary,D)
W=cell(4,8);
A1=zeros(1,26048);
A2=zeros(1,26048);
[~,A1]=sort(D(1,:));
[~,A2]=sort(D(2,:));
[~,A3]=sort(D(1,:)./D(2,:));
[~,A4]=sort(D(2,:)./D(1,:));
for i=1:1:8
    W(1,i)=Vocabulary(A1(26040+i));
    W(2,i)=Vocabulary(A2(26040+i));
    W(3,i)=Vocabulary(A3(26040+i));
    W(4,i)=Vocabulary(A4(26040+i));
    end
end

