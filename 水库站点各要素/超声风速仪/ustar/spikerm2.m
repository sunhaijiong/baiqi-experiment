function rr=spikerm2(xx,hz,min)
%two step to remove 
%中位数4倍方差，差分4倍
%[x1,p1]=spikesremove3(xx,hz,min,4);
%x2=fillnan(x1);
[x1,p1]=spikesremove2(xx,4);
x1=fillnan1(x1);
[x1,p1]=spikesremove2(x1,4);
x1=fillnan1(x1);
[x1,p2]=spikesremove3(x1,hz,min,4);
x1=fillnan1(x1);
rr=x1;
end

%%%%%%%%%%%%%%%%%