clc;
clear all;
close all;
fclose all;
datadir='D:\3d\data\内蒙观测数据汇总\湍流观测数据\uat64mat\';
savepath='D:\3d\data\内蒙观测数据汇总\湍流观测数据\uat64mat\';

filelist=dir([datadir,'UAT64-2020-','*.mat']);  %指定批量数据的类型
k=length(filelist);

WTS=[];
for s=1:k
    fn=filelist(s).name;
    filename=[datadir,filelist(s).name];
    u=load(filename,'u');
    v=load(filename,'v');
    w=load(filename,'w');
    Tv=load(filename,'Tv');
    
    u=struct2cell(u);
    u=cell2mat(u);
    v=struct2cell(v);
    v=cell2mat(v);
    w=struct2cell(w);
    w=cell2mat(w);
    Tv=struct2cell(Tv);
    Tv=cell2mat(Tv);
    
    z0=2.2;  % surface 
    % virtual potential temperature
    % Foken and Wichura (1996): Ts \approx Tv; 
    % Stull(1988): \theta_v \approx Tv+0.0098*z
    theta=Tv+0.0098*z0;  % surface   
    
    %将各变量转化为10Hz
    u=reshape(u,10,[]);
    v=reshape(v,10,[]);
    w=reshape(w,10,[]);
    u=u;
    v=v;
    w=w;
    theta=reshape(theta,10,[]);
    
    %计算瞬时值
    umean=mean(u);
    vmean=mean(v);
    wmean=mean(w);
    thetamean=mean(theta);
    us=u-umean;
    vs=v-vmean;
    ws=w-wmean;
    thetas=theta-thetamean;
     
    %感热通量
    wts=thetas.*ws;
    wts=reshape(wts,[],1);
    %不足一小时，补齐一小时数据
    wts=[wts;zeros(360000-length(wts),1)];
    wts=wts(1:360000,1);
    %分为10min数据
    wts=reshape(wts,60000,[]);
    
    WTS=[WTS,nanmean(wts)];        
end

figure()
plot(WTS,'m','LineWidth',1.5, 'MarkerSize',2, 'MarkerFaceColor','k');
ylabel('SHF (K ms^-^1)');
set(gcf,'unit','centimeters','position',[3 5 18 5]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'fontsize',10,'YColor','m','YAxisLocation','left');
set(gca,'ylim',[-0.3,0.5],'ytick',-0.3:0.2:0.5);
set(gca,'xtick',0:35:360,'xticklabel',...
    {'12:00 8/4','18:00','00:00 8/5','06:00',...
    '12:00','18:00','00:00 8/6','06:00','12:00',...
    '18:00','00:00 8/7'},'fontsize',12,...
    'FontWeight','bold','FontName','Times New Roman');
