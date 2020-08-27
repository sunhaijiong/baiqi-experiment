clear all;clc;
close all;
% 温度湿度
[NUM,TXT,RAW]=xlsread('D:\3d\data\内蒙观测数据汇总\Snow_Baiqi_2_Table1.xlsx');
T=RAW(4:3603,20);
RH=RAW(4:3603,21);
T=cell2mat(T);
RH=cell2mat(RH);
T=reshape(T,10,[]);
RH=reshape(RH,10,[]);
T=mean(T);
RH=mean(RH);
x=0:1:359;
figure()
[AX,H1,H2] =plotyy(x,T,x,RH); 
set(AX(1),'fontsize',10,'YColor','k','YAxisLocation','left');
set(AX(1),'ylim',[10,30],'ytick',10:10:30); %左轴的范围
set(AX(2),'fontsize',10,'YColor','r');
set(AX(2),'ylim',[40,100],'ytick',...
    40:30:100,'TickDir','Out','linewidth',1.5); %右轴的范围 
set(get(AX(1),'ylabel'),'string','{\itT} (℃)',...
    'FontSize',10,'Color','k','FontName','Times New Roman');
set(get(AX(2),'ylabel'),'string','{\itRH} (％)',...
    'FontSize',10,'Color','r','FontName','Times New Roman');
set(H1,'linewidth',1.5,'Color','k');
set(H2,'linewidth',1.5,'Color','r');
set(gcf,'color','white');
set(gca,'linewidth',1.5); %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 18 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xticklabel',[]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 气压辐射
P=RAW(4:3603,22);
netrad=RAW(4:3603,16);
P=cell2mat(P);
netrad=cell2mat(netrad);
P=reshape(P,10,[]);
netrad=reshape(netrad,10,[]);
P=mean(P);
netrad=mean(netrad);
x=0:1:359;
figure()
[AX,H1,H2] =plotyy(x,P,x,netrad); 
set(AX(1),'fontsize',10,'YColor','b','YAxisLocation','left');
set(AX(1),'ylim',[868,872],'ytick',868:2:872); %左轴的范围
set(AX(2),'fontsize',10,'YColor','g');
set(AX(2),'ylim',[0,800],'ytick',0:400:800,...
    'TickDir','Out','linewidth',1.5); %右轴的范围 
set(get(AX(1),'ylabel'),'string','{\itP} (hPa)',...
    'FontSize',10,'Color','b','FontName','Times New Roman');
set(get(AX(2),'ylabel'),'string','{\itNet Radiation} (W m^-^2)',...
    'FontSize',10,'Color','g','FontName','Times New Roman');
set(H1,'linewidth',1.5,'Color','b');
set(H2,'linewidth',1.5,'Color','g');
set(gcf,'color','white')
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 18 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xticklabel',[]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 感热通量
clear all;clc;
[NUM,TXT,RAW]=xlsread('D:\3d\data\内蒙观测数据汇总\湍流观测数据\uat64mat\8月4-6感热通量.xlsx');
SHF=NUM(:,1);
figure()
plot(SHF,'m','LineWidth',1.5, 'MarkerSize',2, 'MarkerFaceColor','k');
ylabel('{\itSHF} (K m s^-^1)');
set(gcf,'unit','centimeters','position',[3 5 18 18]);
set(gca,'Position',[.15 0.7 .75 .2]);
set(gca,'fontsize',10,'YColor','m','YAxisLocation','left');
set(gca,'ylim',[-0.3,0.5],'ytick',-0.3:0.2:0.5);
set(gca,'linewidth',1.5); 
set(gcf,'unit','centimeters','position',[3 5 18 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xticklabel',[]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 摩擦速度
clear all;clc;
[NUM,TXT,RAW]=xlsread('D:\3d\data\内蒙观测数据汇总\湍流观测数据\uat64mat\8月4-6摩擦速度.xlsx');
SHF=NUM(:,1);
figure()
plot(SHF,'c','LineWidth',1.5, 'MarkerSize',2, 'MarkerFaceColor','k');
ylabel('{\itu*} (m s^-^1)');
set(gca,'fontsize',10,'YColor','c','YAxisLocation','left');
set(gca,'ylim',[0,0.3],'ytick',0:0.1:0.3);
set(gca,'linewidth',1.5); 
set(gcf,'unit','centimeters','position',[3 5 18 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xticklabel',[]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%风矢量
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\Snow_Baiqi_2_Table1.xlsx'); 
% 找出数据中的NaN值，并变为0
ws=RAW(4:3603,23);
wd=RAW(4:3603,24);
ws=cell2mat(ws);
wd=cell2mat(wd);
ws(isnan(ws))=0;
wd(isnan(wd))=0;
ws=reshape(ws,10,[]);
wd=reshape(wd,10,[]);
figure()
ws=nanmean(ws);
wd=nanmean(wd);
wd=(wd-90)/180*pi;
[u,v] = pol2cart(wd,ws);
feather(u,v,'k')
% axis equal
ylabel('{\itU} (m s^-^1)');
xlabel('Date & Time');
set(gca,'fontsize',10,'YColor','k','YAxisLocation','left');
set(gca,'ylim',[-4,4],'ytick',-4:4:4);
set(gcf,'unit','centimeters','position',[3 5 18 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'linewidth',1.5); 
set(gca,'xtick',0:35:360,'xticklabel',...
    {'12:00 8/4','18:00','00:00 8/5','06:00',...
    '12:00','18:00','00:00 8/6','06:00','12:00',...
    '18:00','00:00 8/7'},'fontsize',12,...
    'FontWeight','bold','FontName','Times New Roman');
    