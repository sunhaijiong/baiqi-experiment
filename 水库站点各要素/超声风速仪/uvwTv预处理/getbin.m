function [head Cs v1 v2 v3]=getbin(wind)
%去除不完整的头部和尾部
si=find(wind==43605,1);%AA55
wind=wind(si:end);
wind=wind(1:floor(size(wind,1)/416)*416);
%处理有符号的整数
wind2=typecast(uint16(wind),'int16');
wind=reshape(wind,416,[])';
wind2=reshape(wind2,416,[])';
wind2=double(wind2);
%头部数据信息
head=[wind(:,1:8) wind(:,409:416)];
Cs=wind(:,9:4:408);
a1=wind2(:,10:4:408);
a2=wind2(:,11:4:408);
a3=wind2(:,12:4:408);
%补插值零点
Cs(:,100)=Cs(:,99);
a1(:,100)=a1(:,99);
a2(:,100)=a2(:,99);
a3(:,100)=a3(:,99);
Cs=reshape(Cs',1,[])';
a1=reshape(a1',1,[])';
a2=reshape(a2',1,[])';
a3=reshape(a3',1,[])';
%去除野点
Cs=spikerm2(Cs,100,5);
a1=spikerm2(a1,100,5);
a2=spikerm2(a2,100,5);
a3=spikerm2(a3,100,5);

%reshape
Cs=reshape(Cs,100,[])';
v1=reshape(a1,100,[])';
v2=reshape(a2,100,[])';
v3=reshape(a3,100,[])';
end
