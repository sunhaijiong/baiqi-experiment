function [xn,p]=spikesremove3(x,hz,min,n)
 % 去除N倍均方差外野点
 % x：待检验的数据，以列向量格式存放
 % p: 剔除率=随机脉冲的个数/数据的总个数
 % xn：剔除后的数据（剔除后的数据被赋予空值）
 % n（正整数）: 阈值/方差倍数
 x1=x-fltrend1(x,hz,min);
 stdx=std(x1);
 c=find(abs(x1)>n*stdx);
 x(c)=NaN;
 xn=x;
 p=length(c);
end