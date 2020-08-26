function rr=fltrend1(xx,hz,min)
%·Ö¶ÎÈ¥³ýÒ°µã
%hz=100hz
%min=5min
%windowSize = ws;
ws=min*60*hz;
nn=floor(length(xx)/ws);
r2=[];
for i=1:nn
    mm1=median(xx(ws*(i-1)+1:ws*i));
    r1=ones(1,ws)'*mm1;
    r2=[r2; r1];
end
mm1=median(xx(ws*nn+1:end));
r1=ones(1,length(xx)-ws*nn)'*mm1;
rr=[r2; r1];
end