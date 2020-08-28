clear all;clc;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%8��5��1000̽����UAV�Ա�
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% �¶�ʪ��
[NUM1,TXT1,RAW1]=xlsread('D:\3d\data\���ɹ۲����ݻ���\��������Ա�����.xlsx','Sheet3');
theta1=RAW1(2:174,9);
r1=RAW1(2:174,10);
height1=RAW1(2:174,6);
theta1=cell2mat(theta1);
r1=cell2mat(r1);
height1=cell2mat(height1);

[NUM2,TXT2,RAW2]=xlsread('D:\3d\data\���ɹ۲����ݻ���\��������Ա�����.xlsx','Sheet3');
theta2=RAW2(176:546,9);
r2=RAW2(176:546,10);
height2=RAW2(176:546,6);
theta2=cell2mat(theta2);
r2=cell2mat(r2);
height2=cell2mat(height2);

subplot(1,2,1)
plot(theta1,height1,'LineWidth',2,'color','r'); 
set(gca,'FontName','Times New Roman','FontSize',12);
set(gca,'linewidth',1.5);
set(gca,'ylim',[1280,2280],'ytick',1280:200:2280); 
set(gca,'xlim',[310,314],'xtick',310:2:314); 
xlabel('{\it\theta} (K)','FontSize',12,...
    'FontName','Times New Roman');
ylabel('Height (m)','FontSize',12,...
    'FontName','Times New Roman');
old_units = get(gca,'units');
% text(0.15*xmax,0.85*ymax,'08/05 11:00');
a=get(gca);
x=a.XLim;%��ȡ������������
y=a.YLim;%��ȡ������������
k=[0.5 0.3];%����text���λ��
x0=x(1)+k(1)*(x(2)-x(1));%��ȡtext������
y0=y(1)+k(2)*(y(2)-y(1));%��ȡtext������
text(x0,y0,'08/05 10:00');
hold on
plot(theta2,height2,'LineWidth',2,'color','k');
subplot(1,2,2)
plot(r1,height1,'LineWidth',2,'color','r'); 
hold on
plot(r2,height2,'LineWidth',2,'color','k');
set(gca,'FontName','Times New Roman','FontSize',12);
set(gca,'linewidth',1.5); %���ñ߿���  
set(gca,'ylim',[1280,2280],'ytick',1280:200:2280); %����ķ�Χ
set(gca,'xlim',[7,9],'xtick',7:1:9); 
set(gca,'ytick',[]);
xlabel('{\itq} (g kg^-^1)','FontSize',12,...
    'FontName','Times New Roman');
h2=legend('Sounding','UAV');
set(h2,'FontName','Times New Roman',...
    'FontSize',12,'FontWeight','normal',...
    'location','northwest','box','off');
set(gcf,'unit','centimeters','position',[3 5 12 10]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%8��6��0800̽����UAV�Ա�
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[NUM1,TXT1,RAW1]=xlsread('D:\3d\data\���ɹ۲����ݻ���\��������Ա�����.xlsx','Sheet3');
theta1=RAW1(549:758,9);
r1=RAW1(549:758,10);
height1=RAW1(549:758,6);
theta1=cell2mat(theta1);
r1=cell2mat(r1);
height1=cell2mat(height1);

[NUM2,TXT2,RAW2]=xlsread('D:\3d\data\���ɹ۲����ݻ���\��������Ա�����.xlsx','Sheet3');
theta2=RAW2(760:1125,9);
r2=RAW2(760:1125,10);
height2=RAW2(760:1125,6);
theta2=cell2mat(theta2);
r2=cell2mat(r2);
height2=cell2mat(height2);

subplot(1,2,1)
plot(theta1,height1,'LineWidth',2,'color','r'); 
set(gca,'FontName','Times New Roman','FontSize',12);
set(gca,'linewidth',1.5);
set(gca,'ylim',[1280,2280],'ytick',1280:200:2280); 
set(gca,'xlim',[304,312],'xtick',304:4:312); 
xlabel('{\it\theta} (K)','FontSize',12,...
    'FontName','Times New Roman');
ylabel('Height (m)','FontSize',12,...
    'FontName','Times New Roman');
a=get(gca);
x=a.XLim;%��ȡ������������
y=a.YLim;%��ȡ������������
k=[0.5 0.3];%����text���λ��
x0=x(1)+k(1)*(x(2)-x(1));%��ȡtext������
y0=y(1)+k(2)*(y(2)-y(1));%��ȡtext������
text(x0,y0,'08/06 08:00');
hold on
plot(theta2,height2,'LineWidth',2,'color','k');
subplot(1,2,2)
plot(r1,height1,'LineWidth',2,'color','r'); 
hold on
plot(r2,height2,'LineWidth',2,'color','k');
set(gca,'FontName','Times New Roman','FontSize',12);
set(gca,'linewidth',1.5); %���ñ߿���  
set(gca,'ylim',[1280,2280],'ytick',1280:200:2280); %����ķ�Χ
set(gca,'xlim',[8,14],'xtick',8:3:14); 
xlabel('{\itq} (g kg^-^1)','FontSize',12,...
    'FontName','Times New Roman');
h2=legend('Sounding','UAV');
set(h2,'FontName','Times New Roman',...
    'FontSize',12,'FontWeight','normal',...
    'location','northwest','box','off');
set(gcf,'unit','centimeters','position',[3 5 12 10]);


