function xn=fillnan1(x)
%���ٽ�ǰһ��ֵ�滻NaN
    ind=find(isnan(x));
    for i=1:numel(ind)
        if ind(i)>100
            x(ind(i))=nanmedian(x(ind(i)-100:ind(i)));
        else
           x(ind(i))=nanmedian(x(ind(i):ind(i)+100)); 
        end
    end
    xn=x;
end