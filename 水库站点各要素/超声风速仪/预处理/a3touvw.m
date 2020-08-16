function rr=a3touvw(xx)
%2020年07/24
a1=xx(:,1);
a2=xx(:,2);
a3=xx(:,3);
u10=(2*a1-a2-a3)/2.1213;
u20=(a3-a2)/1.2247;
u3=(a1+a2+a3)/2.1213;
%绕Z轴逆时针旋转120度后X轴指向正东
%用向量乘法计算，乘以120度的单位向量
u1=u10*cos(2*pi/3)-u20*sin(2*pi/3);
u2 =u20*cos(2*pi/3)+u10*sin(2*pi/3);
%u1=-u10*sin(pi/6)-u20*cos(pi/6);
%u2 =u10*sin(2*pi/3)-u20*sin(pi/6);
rr=[u1 u2 u3];
end
