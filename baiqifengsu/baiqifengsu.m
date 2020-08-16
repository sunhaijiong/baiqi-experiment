%赋值与wind_data变量中；矩阵行×列值为18000×7，所对应时间
%为2020/8/1 12:00-2020/8/7 12:00
wind_data = xlsread('D:\3d\data\白旗风速\试验期间各层高度数据.xlsx'); 
% 找出数据中的NaN值，并变为0
wind_data(isnan(wind_data))=0;
% 计算10分钟平均值，赋值于矩阵a
k=0;
% i代表列数
for i=1:7
% j代表行数  
    for j=1:864
        Q=wind_data(20*j-19:20*j,i);
        c=Q(wind_data(20*j-19:20*j,i)~=0);
        k=length(c);
        P=sum(wind_data(20*j-19:20*j,i));  
        a(j,i)= P/k;
        k=0;
     end
end
A=a(:,1);B=a(:,2);C=a(:,3);...
D=a(:,4);E=a(:,5);F=a(:,6);G=a(:,7);
%对A插值
L = length(A);
for i=1:7
    for h=1:L
        if isnan(A(h))
        A(h)=A(h-1);
        end
    end
end
%对B插值
for i=1:7
    for h=1:L
        if isnan(B(h))
        B(h)=B(h-1);
        end
    end
end
%对C插值
for i=1:7
    for h=1:L
        if isnan(C(h))
        C(h)=C(h-1);
        end
    end
end
%对D插值
for i=1:7
    for h=1:L
        if isnan(D(h))
        D(h)=D(h-1);
        end
    end
end
%对E插值
for i=1:7
    for h=1:L
        if isnan(E(h))
        E(h)=E(h-1);
        end
    end
end
%对F插值
for i=1:7
    for h=1:L
        if isnan(F(h))
        F(h)=F(h-1);
        end
    end
end
%对G插值
for i=1:7
    for h=1:L
        if isnan(G(h))
        G(h)=G(h-1);
        end
    end
end

%将6天风速进行平均
A2=reshape(A,[144,6]);
B2=reshape(B,[144,6]);
C2=reshape(C,[144,6]);
D2=reshape(D,[144,6]);
E2=reshape(E,[144,6]);
F2=reshape(F,[144,6]);
G2=reshape(G,[144,6]);
A3=mean(A2,2);
B3=mean(B2,2);
C3=mean(C2,2);
D3=mean(D2,2);
E3=mean(E2,2);
F3=mean(F2,2);
G3=mean(G2,2);
  
%对A滑动平滑滤波
N=5;  % 窗口大下
k=0;
m =0 ;
L1=length(A3);
for i=1:L1
    m=m+1;
    if i+N-1>L1
        break
    else
        for j=i:N+i-1
            k=k+1;
            W(k)=A3(j);
        end
        A1(m)=mean(W);
        k=0;
    end
end

%对B滑动平滑滤波
N=5;  % 窗口大下
k=0;
m =0 ;
for i=1:L1
    m=m+1;
    if i+N-1>L1
        break
    else
        for j=i:N+i-1
            k=k+1;
            W(k)=B3(j);
        end
        B1(m)=mean(W);
        k=0;
    end
end

%对C滑动平滑滤波
N=5;  % 窗口大下
k=0;
m =0 ;
for i=1:L1
    m=m+1;
    if i+N-1>L1
        break
    else
        for j=i:N+i-1
            k=k+1;
            W(k)=C3(j);
        end
        C1(m)=mean(W);
        k=0;
    end
end

%对D滑动平滑滤波
N=5;  % 窗口大下
k=0;
m =0 ;
for i=1:L1
    m=m+1;
    if i+N-1>L1
        break
    else
        for j=i:N+i-1
            k=k+1;
            W(k)=D3(j);
        end
        D1(m)=mean(W);
        k=0;
    end
end

%对E滑动平滑滤波
N=5;  % 窗口大下
k=0;
m =0 ;
for i=1:L1
    m=m+1;
    if i+N-1>L1
        break
    else
        for j=i:N+i-1
            k=k+1;
            W(k)=E3(j);
        end
        E1(m)=mean(W);
        k=0;
    end
end

%对F滑动平滑滤波
N=5;  % 窗口大下
k=0;
m =0 ;
for i=1:L1
    m=m+1;
    if i+N-1>L1
        break
    else
        for j=i:N+i-1
            k=k+1;
            W(k)=F3(j);
        end
        F1(m)=mean(W);
        k=0;
    end
end

%对G滑动平滑滤波
N=5;  % 窗口大下
k=0;
m =0 ;
for i=1:L1
    m=m+1;
    if i+N-1>L1
        break
    else
        for j=i:N+i-1
            k=k+1;
            W(k)=G3(j);
        end
        G1(m)=mean(W);
        k=0;
    end
end

x=1:1:140;
plot(x,A1,'LineWidth',2);
set(gcf,'unit','centimeters','position',[3 3 14 14]);
set(gca, 'YLim',[2 12]);
set(gca,'YTick',[2:2:12]);
set(gca,'Position',[.16 .16 .7 .7]);
ylabel('WSPD (m/s)','FontSize',10,...
    'FontName','Times New Roman');
xlabel('Local Solar Time (hour)','FontSize',10,...
    'FontName','Times New Roman');
set(gca,'xtick',0:35:140,'xticklabel',...
    {'12:00AM','6:00AM','12:00PM',...
    '6:00PM','12:00AM'},'fontsize',12,...
    'FontWeight','bold','FontName','Times New Roman');
set(gca,'tickdir','out');
set(gca,'ticklength',[0.025 0.025],'LineWidth',1.5);

hold on
plot(x,B1,'LineWidth',2);
hold on
plot(x,C1,'LineWidth',2);
hold on
plot(x,D1,'LineWidth',2);
hold on
plot(x,E1,'LineWidth',2);
hold on
plot(x,F1,'LineWidth',2);
hold on
plot(x,G1,'LineWidth',2);
h1=legend('50m','100m','200m','300m',...
    '400m','500m','600m');
set(h1,'location','southwest','box','off');
