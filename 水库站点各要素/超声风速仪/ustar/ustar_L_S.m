clc
clear all
close all
fclose all
datadir='D:\3d\data\���ɹ۲����ݻ���\�����۲�����\uat64mat\';
savepath='D:\3d\data\���ɹ۲����ݻ���\�����۲�����\uat64mat\';

filelist=dir([datadir,'UAT64-2020-','*.mat']);  %ָ���������ݵ�����
k=length(filelist);
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
    
    %��������ת��Ϊ10Hz
    u=reshape(u,10,[]);
    v=reshape(v,10,[]);
    w=reshape(w,10,[]);
    theta=reshape(theta,10,[]);
    
    %����˲ʱֵ
    umean=mean(u);
    vmean=mean(v);
    wmean=mean(w);
    thetamean=mean(theta);
    us=u-umean;
    vs=v-vmean;
    ws=w-wmean;
    thetas=theta-thetamean;
    
    [S,L,ustar]=caculate1(us,vs,ws,thetas,theta,z0);
    
    ustar=ustar';
    %ȥ��Ұ��
    ustar=spikerm2(ustar,10,5);
    figure
    plot(ustar,'.');
    title('u*');  
    set(gcf,'visible','off');
    saveas(gcf,[savepath fn(1:length(fn)-4)],'png');     
end

