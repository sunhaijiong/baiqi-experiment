% 摩擦速度
datadir='D:\3d\data\内蒙观测数据汇总\湍流观测数据\uat64mat\';
savepath='D:\3d\data\内蒙观测数据汇总\湍流观测数据\uat64mat\';

filelist=dir([datadir,'UAT64-2020-','*.mat']);  %指定批量数据的类型
k=length(filelist);
USTAR=[];
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
    
    [S,L,ustar]=caculate1(us,vs,ws,thetas,theta,z0);
    
    ustar=reshape(ustar,[],1);
    %不足一小时，补齐一小时数据
    ustar=[ustar;zeros(36000-length(ustar),1)];
    ustar=ustar(1:36000,1);
    %分为10min数据
    ustar=reshape(ustar,6000,[]);
    USTAR=[USTAR,nanmean(ustar)];            
end
    figure
    plot(USTAR);