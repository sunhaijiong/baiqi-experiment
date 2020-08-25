close all;
clear all;clc;
% 读取Excel文件至matlab中，并存入变量all_data
% 平均浓度
all_data = xlsread('D:\3d\data\望都实验部分数据\安光所望都实验结果\12181200-12201600 边界层高度数据.xlsx'); 
pbl=all_data(1,1:291);
PBL=100*pbl;
y=1:1:291;
plot(y,PBL,'-ks', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
set(gca,'ylim',[0,300],'ytick',0:100:300); %左轴的范围
xlabel('Date & Time','FontSize',10,'Color','k','FontName','Times New Roman');
ylabel('Height','FontSize',10,'Color','k','FontName','Times New Roman');
set(gca,'linewidth',1.5) %设置边框宽度  
set(gca,'fontsize',10,'YAxisLocation','right');
set(gcf,'unit','centimeters','position',[3 5 20 10]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gcf,'visible','on');

% 时间坐标轴
x=1:1:24;
y=0:10:230;
 plot(x,y,'k', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
set(gca,'ylim',[0,500],'ytick',0:100:500); %左轴的范围
xlabel('Date & Time','FontSize',10,'Color','k','FontName','Times New Roman');
ylabel('Height','FontSize',10,'Color','g','FontName','Times New Roman');
set(gca,'linewidth',1.5) %设置边框宽度  
set(gca,'fontsize',10,'YAxisLocation','left');
set(gca,'ycolor','k');
set(gcf,'unit','centimeters','position',[3 5 20 10]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'xtick',0:3:24,'xticklabel',{'00:00 08/06','03:00','06:00',...
    '09:00','12:00','15:00','18:00','21:00','00:00 08/07'},'fontsize',10);



% No.1
clear all;clc;
savepath='D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\位温混合比\'; %批量转换成目标文件MAT

[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(10:212,3);
shidu=NUM(10:212,5);
weiwen=NUM(10:212,9);
hunhebi=NUM(10:212,10);
height=NUM(10:212,6);
figure(1)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[0,500],'ytick',0:100:500); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
% [ax,hl1,hl2] = plotxx(shidu,height,wendu,height,xlabels,ylabels); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.1');  
set(gcf,'visible','off');
saveas(gcf,[savepath 'No1.png'],'png');   
saveas(gcf,'No1.png');   


% No.2
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(212:565,3);
shidu=NUM(212:565,5);
weiwen=NUM(212:565,9);
hunhebi=NUM(212:565,10);
height=NUM(212:565,6);
figure (2)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.2');  
set(gcf,'visible','off');
saveas(gcf,'No2.png');   

% No.3
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(568:771,3);
shidu=NUM(568:771,5);
weiwen=NUM(568:771,9);
hunhebi=NUM(568:771,10);
height=NUM(568:771,6);
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
figure (3)
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.3');  
set(gcf,'visible','off');
saveas(gcf,'No3.png');   

% No.4
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(771:1110,3);
shidu=NUM(771:1110,5);
weiwen=NUM(771:1110,9);
hunhebi=NUM(771:1110,10);
height=NUM(771:1110,6);
figure (4)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
% title('No.4');  
% set(gcf,'visible','off');
% saveas(gcf,'No4.png');  

% No.5
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(1113:1356,3);
shidu=NUM(1113:1356,5);
weiwen=NUM(1113:1356,9);
hunhebi=NUM(1113:1356,10);
height=NUM(1113:1356,6);
figure (5)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.5');  
set(gcf,'visible','on');
saveas(gcf,'No5.png'); 

% No.6
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(1356:1742,3);
shidu=NUM(1356:1742,5);
weiwen=NUM(1356:1742,9);
hunhebi=NUM(1356:1742,10);
height=NUM(1356:1742,6);
figure (6)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.6');  
set(gcf,'visible','off');
saveas(gcf,'No6.png'); 

% No.7
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(1745:1974,3);
shidu=NUM(1745:1974,5);
weiwen=NUM(1745:1974,9);
hunhebi=NUM(1745:1974,10);
height=NUM(1745:1974,6);
figure (7)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.7');  
set(gcf,'visible','off');
saveas(gcf,'No7.png'); 

% No.8
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(1974:2335,3);
shidu=NUM(1974:2335,5);
weiwen=NUM(1974:2335,9);
hunhebi=NUM(1974:2335,10);
height=NUM(1974:2335,6);
figure (8)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.8');  
set(gcf,'visible','off');
saveas(gcf,'No8.png'); 

% No.9
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(2343:2680,3);
shidu=NUM(2343:2680,5);
weiwen=NUM(2343:2680,9);
hunhebi=NUM(2343:2680,10);
height=NUM(2343:2680,6);
figure (9)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.9');  
set(gcf,'visible','off');
saveas(gcf,'No9.png'); 

% No.10
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(2683:2927,3);
shidu=NUM(2683:2927,5);
weiwen=NUM(2683:2927,9);
hunhebi=NUM(2683:2927,10);
height=NUM(2683:2927,6);
figure (10)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.10');  
set(gcf,'visible','off');
saveas(gcf,'No10.png'); 

% No.11
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(2928:3285,3);
shidu=NUM(2928:3285,5);
weiwen=NUM(2928:3285,9);
hunhebi=NUM(2928:3285,10);
height=NUM(2928:3285,6);
figure (11)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.11');  
set(gcf,'visible','off');
saveas(gcf,'No11.png'); 

% No.12
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(3288:3549,3);
shidu=NUM(3288:3549,5);
weiwen=NUM(3288:3549,9);
hunhebi=NUM(3288:3549,10);
height=NUM(3288:3549,6);
figure (12)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.12');  
set(gcf,'visible','off');
saveas(gcf,'No12.png'); 

No.13
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(3549:3919,3);
shidu=NUM(3549:3919,5);
weiwen=NUM(3549:3919,9);
hunhebi=NUM(3549:3919,10);
height=NUM(3549:3919,6);
figure (13)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.13');  
set(gcf,'visible','off');
saveas(gcf,'No13.png'); 

% No.14
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(3922:4243,3);
shidu=NUM(3922:4243,5);
weiwen=NUM(3922:4243,9);
hunhebi=NUM(3922:4243,10);
height=NUM(3922:4243,6);
figure (14)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.14');  
set(gcf,'visible','off');
saveas(gcf,'No14.png'); 

% No.15
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(4269:4650,3);
shidu=NUM(4269:4650,5);
weiwen=NUM(4269:4650,9);
hunhebi=NUM(4269:4650,10);
height=NUM(4269:4650,6);
figure (15)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.15');  
set(gcf,'visible','off');
saveas(gcf,'No15.png'); 

% No.16
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(4653:4888,3);
shidu=NUM(4653:4888,5);
weiwen=NUM(4653:4888,9);
hunhebi=NUM(4653:4888,10);
height=NUM(4653:4888,6);
figure (16)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.16');  
set(gcf,'visible','off');
saveas(gcf,'No16.png'); 

% No.17
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(4888:5256,3);
shidu=NUM(4888:5256,5);
weiwen=NUM(4888:5256,9);
hunhebi=NUM(4888:5256,10);
height=NUM(4888:5256,6);
figure (17)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.17');  
set(gcf,'visible','off');
saveas(gcf,'No17.png'); 

% No.18
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(5259:5513,3);
shidu=NUM(5259:5513,5);
weiwen=NUM(5259:5513,9);
hunhebi=NUM(5259:5513,10);
height=NUM(5259:5513,6);
figure (18)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.18');  
set(gcf,'visible','off');
saveas(gcf,'No18.png');

% No.19
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(5514:5879,3);
shidu=NUM(5514:5879,5);
weiwen=NUM(5514:5879,9);
hunhebi=NUM(5514:5879,10);
height=NUM(5514:5879,6);
figure (19)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.19');  
set(gcf,'visible','off');
saveas(gcf,'No19.png');

% No.20
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(5882:6098,3);
shidu=NUM(5882:6098,5);
weiwen=NUM(5882:6098,9);
hunhebi=NUM(5882:6098,10);
height=NUM(5882:6098,6);
figure (20)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.20');  
set(gcf,'visible','off');
saveas(gcf,'No20.png');

% No.21
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(6098:6441,3);
shidu=NUM(6098:6441,5);
weiwen=NUM(6098:6441,9);
hunhebi=NUM(6098:6441,10);
height=NUM(6098:6441,6);
figure (21)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.21');  
set(gcf,'visible','off');
saveas(gcf,'No21.png');

% No.22
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(6444:6662,3);
shidu=NUM(6444:6662,5);
weiwen=NUM(6444:6662,9);
hunhebi=NUM(6444:6662,10);
height=NUM(6444:6662,6);
figure (22)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.22');  
set(gcf,'visible','off');
saveas(gcf,'No22.png');

% No.23
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(6662:7020,3);
shidu=NUM(6662:7020,5);
weiwen=NUM(6662:7020,9);
hunhebi=NUM(6662:7020,10);
height=NUM(6662:7020,6);
figure (23)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.23');  
set(gcf,'visible','off');
saveas(gcf,'No23.png');

% No.24
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(7023:7270,3);
shidu=NUM(7023:7270,5);
weiwen=NUM(7023:7270,9);
hunhebi=NUM(7023:7270,10);
height=NUM(7023:7270,6);
figure (24)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.24');  
set(gcf,'visible','off');
saveas(gcf,'No24.png');

% No.25
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(7270:7655,3);
shidu=NUM(7270:7655,5);
weiwen=NUM(7270:7655,9);
hunhebi=NUM(7270:7655,10);
height=NUM(7270:7655,6);
figure (25)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.25');  
set(gcf,'visible','off');
saveas(gcf,'No25.png');

% No.26
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(7658:7907,3);
shidu=NUM(7658:7907,5);
weiwen=NUM(7658:7907,9);
hunhebi=NUM(7658:7907,10);
height=NUM(7658:7907,6);
figure (26)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.26');  
set(gcf,'visible','off');
saveas(gcf,'No26.png');

% No.27
clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\内蒙观测数据汇总\六旋翼飞机探空处理数据\探空数据.xlsx','Sheet3'); 
wendu=NUM(7923:8300,3);
shidu=NUM(7923:8300,5);
weiwen=NUM(7923:8300,9);
hunhebi=NUM(7923:8300,10);
height=NUM(7923:8300,6);
figure (27)
% plot(pm,height,'-ro', 'LineWidth',1, 'MarkerSize',2, 'MarkerFaceColor','k');
% set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %左轴的范围
% set(gca,'xlim',[0,60],'xtick',0:30:60); %左轴的范围
set(gca,'linewidth',1.5) %设置边框宽度  
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .2 .75 .6]);
xlabels{1} = 'r';
xlabels{2} = 'θ';
ylabels{1} = 'Height';
ylabels{2} = 'Height';
[ax,hl1,hl2] = plotxx(hunhebi,height,weiwen,height); 
set(gca,'linewidth',1.5) %设置边框宽度  
title('No.27');  
set(gcf,'visible','off');
saveas(gcf,'No27.png');