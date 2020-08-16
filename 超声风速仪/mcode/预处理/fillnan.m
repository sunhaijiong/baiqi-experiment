function xn=fillnan(x)
    %用临近前一个值替换NaN
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