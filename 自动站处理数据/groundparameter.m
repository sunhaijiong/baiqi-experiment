clear all;clc;
close all;
% �¶�ʪ��
[NUM,TXT,RAW]=xlsread('D:\3d\data\���ɹ۲����ݻ���\Snow_Baiqi_2_Table11.xlsx');
T=RAW(4:4323,20);
RH=RAW(4:4323,21);
T=cell2mat(T);
RH=cell2mat(RH);
T=reshape(T,10,[]);
RH=reshape(RH,10,[]);
T=mean(T);
RH=mean(RH);
x=0:1:431;
figure()
[AX,H1,H2] =plotyy(x,T,x,RH); 
set(AX(1),'fontsize',10,'YColor','k','YAxisLocation','left');
set(AX(1),'ylim',[5,35],'ytick',5:10:35); %����ķ�Χ
set(AX(2),'fontsize',10,'YColor','r');
set(AX(2),'ylim',[40,100],'ytick',...
    40:30:100,'TickDir','Out','linewidth',1.5); %����ķ�Χ 
set(get(AX(1),'ylabel'),'string','{\itT} (��)',...
    'FontSize',10,'Color','k','FontName','Times New Roman');
set(get(AX(2),'ylabel'),'string','{\itRH} (��)',...
    'FontSize',10,'Color','r','FontName','Times New Roman');
set(H1,'linewidth',1.5,'Color','k');
set(H2,'linewidth',1.5,'Color','r');
set(gcf,'color','white');
set(gca,'linewidth',1.5); %���ñ߿���  
set(gcf,'unit','centimeters','position',[3 5 20 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xtick',0:36:432,'xticklabel',...
    {'00:00 8/4','06:00','12:00','18:00','00:00 8/5','06:00',...
    '12:00','18:00','00:00 8/6','06:00','12:00',...
    '18:00','00:00 8/7'},'fontsize',12,...
    'FontWeight','bold','FontName','Times New Roman');
set(gca,'xticklabel',[]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ��ѹ����
P=RAW(4:4323,22);
netrad=RAW(4:4323,5);
P=cell2mat(P);
netrad=cell2mat(netrad);
P=reshape(P,10,[]);
netrad=reshape(netrad,10,[]);
P=mean(P);
netrad=mean(netrad);
x=0:1:431;
figure()
[AX,H1,H2] =plotyy(x,P,x,netrad); 
set(AX(1),'fontsize',10,'YColor','b','YAxisLocation','left');
set(AX(1),'ylim',[866,872],'ytick',866:3:872); %����ķ�Χ
set(AX(2),'fontsize',10,'YColor','g');
set(AX(2),'ylim',[0,1500],'ytick',0:500:1500,...
    'TickDir','Out','linewidth',1.5); %����ķ�Χ 
set(get(AX(1),'ylabel'),'string','{\itP} (hPa)',...
    'FontSize',10,'Color','b','FontName','Times New Roman');
set(get(AX(2),'ylabel'),'string','{\itDSR} (W m^-^2)',...
    'FontSize',10,'Color','g','FontName','Times New Roman');
set(H1,'linewidth',1.5,'Color','b');
set(H2,'linewidth',1.5,'Color','g');
set(gcf,'color','white')
set(gca,'linewidth',1.5) %���ñ߿���  
set(gcf,'unit','centimeters','position',[3 5 20 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xtick',0:36:432,'xticklabel',...
    {'00:00 8/4','06:00','12:00','18:00','00:00 8/5','06:00',...
    '12:00','18:00','00:00 8/6','06:00','12:00',...
    '18:00','00:00 8/7'},'fontsize',12,...
    'FontWeight','bold','FontName','Times New Roman');
set(gca,'xticklabel',[]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ����ͨ��
clear all;clc;
[NUM,TXT,RAW]=xlsread('D:\3d\data\���ɹ۲����ݻ���\�����۲�����\uat64mat\8��4-6����ͨ��.xlsx');
SHF=NUM(:,1);
figure()
plot(SHF,'m','LineWidth',1.5, 'MarkerSize',2, 'MarkerFaceColor','k');
ylabel('{\itSHF} (K m s^-^1)');
set(gcf,'unit','centimeters','position',[3 5 18 18]);
set(gca,'Position',[.15 0.7 .75 .2]);
set(gca,'fontsize',10,'YColor','m','YAxisLocation','left');
set(gca,'ylim',[-0.3,0.5],'ytick',-0.3:0.2:0.5);
set(gca,'linewidth',1.5); 
set(gcf,'unit','centimeters','position',[3 5 20 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xtick',0:36:432,'xticklabel',...
    {'00:00 8/4','06:00','12:00','18:00','00:00 8/5','06:00',...
    '12:00','18:00','00:00 8/6','06:00','12:00',...
    '18:00','00:00 8/7'},'fontsize',12,...
    'FontWeight','bold','FontName','Times New Roman');
set(gca,'xticklabel',[]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ħ���ٶ�
clear all;clc;
[NUM,TXT,RAW]=xlsread('D:\3d\data\���ɹ۲����ݻ���\�����۲�����\uat64mat\8��4-6Ħ���ٶ�.xlsx');
ustar=NUM(:,1);
figure()
plot(ustar,'c','LineWidth',1.5, 'MarkerSize',2, 'MarkerFaceColor','k');
ylabel('{\itu*} (m s^-^1)');
set(gca,'fontsize',10,'YColor','c','YAxisLocation','left');
set(gca,'ylim',[0,0.3],'ytick',0:0.1:0.3);
set(gca,'linewidth',1.5); 
set(gcf,'unit','centimeters','position',[3 5 20 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xtick',0:36:432,'xticklabel',...
    {'00:00 8/4','06:00','12:00','18:00','00:00 8/5','06:00',...
    '12:00','18:00','00:00 8/6','06:00','12:00',...
    '18:00','00:00 8/7'},'fontsize',12,...
    'FontWeight','bold','FontName','Times New Roman');
set(gca,'xticklabel',[]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
% ��ʸ��
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\���ɹ۲����ݻ���\Snow_Baiqi_2_Table11.xlsx'); 
% �ҳ������е�NaNֵ������Ϊ0
ws=RAW(4:4323,23);
wd=RAW(4:4323,24);
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
axis equal
ylabel('{\itU} (m s^-^1)');
xlabel('Date & Time');
set(gca,'fontsize',10,'YColor','k','YAxisLocation','left');
set(gca,'ylim',[-4,4],'ytick',-4:4:4);
set(gcf,'unit','centimeters','position',[3 5 20 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xtick',0:36:432,'xticklabel',...
    {'00:00 8/4','06:00','12:00','18:00','00:00 8/5','06:00',...
    '12:00','18:00','00:00 8/6','06:00','12:00',...
    '18:00','00:00 8/7'},'fontsize',12,...
    'FontWeight','bold','FontName','Times New Roman');
    