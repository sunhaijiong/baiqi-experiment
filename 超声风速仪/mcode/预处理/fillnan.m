function xn=fillnan(x)
    %���ٽ�ǰһ��ֵ�滻NaN
    ind=find(isnan(x));
    for i=1:numel(ind)
        if ind(i)==1
            x(ind)=median(x);
        else
            x(ind(i))=x(ind(i)-1);
        end
    end
    xn=x;
end