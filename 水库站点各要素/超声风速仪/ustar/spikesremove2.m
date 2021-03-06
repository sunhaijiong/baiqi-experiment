function [xn,p]=spikesremove2(x,n)
 % 去除离散野点
 % x：待检验的数据，以一维列向量格式存放
 % p: 剔除率=随机脉冲的个数/数据的总个数
 % xn：剔除后的数据（剔除后的数据被赋予空值）
 % n（正整数）: 阈值/方差倍数
 if length(x)>100
    mx=nanmedian(x(1:100));
 else
    mx=nanmedian(x);
 end
 %stdx=std(x);
 x1=[mx;x];
 x2=diff(x1);
 stdx=std(x2);
 if stdx<1
     stdx=1;
 end
 %c=find((abs(x2)>n*stdx)&(abs(x-mx)>n/2*stdx));
 c=find(abs(x2)>n*stdx);
 x(c)=NaN;
 xn=x;
 p=length(c); 
end
