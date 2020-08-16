function rr=spikerm2(xx)
%two step to remove 
%中位数4倍方差，差分3.5倍
[xu,p1]=spikesremove1(xx,4);
y1=fillnan(xu);
[y2,p2]=spikesremove2(y1,3.5);
rr=fillnan(y2);
end