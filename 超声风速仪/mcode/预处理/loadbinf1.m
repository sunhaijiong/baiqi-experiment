clc;
clear all;
%打开并读取一个文件
[FileName,PathName] = uigetfile('*','Select the file');
fidin=fopen([PathName FileName],'rb');
while ~feof(fidin)    %% 判断是否为文件末尾   
%因为该二进制文件中每4个字节存储一个整形数值，所以下面写uint16     
    [wind,cnt]=fread(fidin,inf,'uint16',0,'b');
    %[wind,cnt]=fread(fidin,400,'int16',0,'b');
    %[tt,cnt]=fread(fidin,8,'uint16',0,'b');    
end
fclose(fidin);
%wind=int16(wind);
[head1 Cs v1 v2 v3]=getbin(wind);
%[head1 Cs v1 v2 v3]=getbin1(wind);
Cs=reshape(Cs',1,[])';
v1=reshape(v1',1,[])';
v2=reshape(v2',1,[])';
v3=reshape(v3',1,[])';
uvw=a3touvw([v1 v2 v3]);
%计算1秒平均值
Cs1s=mean(reshape(Cs,100,[]),1)';
v1s=mean(reshape(v1,100,[]),1)';
v2s=mean(reshape(v2,100,[]),1)';
v3s=mean(reshape(v3,100,[]),1)';
%hhmmssddmoyy
hh=floor(head1(:,9)/256);
mm=head1(:,9)-256*hh;
ss=floor(head1(:,10)/256);
dd=head1(:,10)-256*ss;
mo=floor(head1(:,11)/256);
yy=head1(:,11)-256*mo;
ddtm=[yy mo dd hh mm ss Cs1s];
%unique(xx(:,5))
vs=sqrt(v1.*v1+v2.*v2+v3.*v3);
subplot(2,2,1);
plot(v1,'.');
title('Subplot 1: A1');
subplot(2,2,2);
plot(v2,'.');
title('Subplot 2: A2');
subplot(2,2,3);
plot(v3,'.');
title('Subplot 3: A3');
subplot(2,2,4);
plot(vs,'.');
title('Subplot 4: Vs');
