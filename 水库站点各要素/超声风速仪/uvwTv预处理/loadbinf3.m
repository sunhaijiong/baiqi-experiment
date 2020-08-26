clc;
clear all;
% �򿪲���ȡһ���ļ�
% [FileName,PathName] = uigetfile('*','Select the file');
% fidin=fopen([PathName FileName],'rb');
datadir='D:\3d\data\���ɹ۲����ݻ���\�����۲�����\uat64\';  %ָ�������������ڵ��ļ���
savepath='D:\3d\data\���ɹ۲����ݻ���\�����۲�����\uat64\'; %����ת����Ŀ���ļ�MAT
filelist=dir([datadir,'*.log']); 
k=length(filelist);
for i=1:k
    fn=filelist(i).name;
    fidin=fopen([datadir fn],'rb');
    while ~feof(fidin) 
        %��Ϊ�ö������ļ���ÿ4���ֽڴ洢һ��������ֵ����������дuint16     
        [wind,cnt]=fread(fidin,inf,'uint16',0,'b');
        %[wind,cnt]=fread(fidin,400,'int16',0,'b');
        %[tt,cnt]=fread(fidin,8,'uint16',0,'b');       
    end
    fclose(fidin);
    %wind=int16(wind);
    [head1 Cs v1 v2 v3]=getbin(wind);
    %[head1 Cs v1 v2 v3]=getbin1(wind);
    
    Cs=reshape(Cs',1,[])';
    v1=reshape(v1',1,[])';
    v2=reshape(v2',1,[])';
    v3=reshape(v3',1,[])';  
    
    %UAT64λ�ó��£���Ҫ��ת180�ȣ���������[-1,1,-1];
    v1=-1*v1;
    v3=-1*v3;
    uvw=a3touvw([v1 v2 v3]);

    load D:\3d\data\���ɹ۲����ݻ���\�����۲�����\�����\perfect;
    a=perfect(:,7);
    b=perfect(:,8);
   
    fx=anglexy(uvw,a(i),b(i));
    u=uvw(:,1);
    v=uvw(:,2);
    w=uvw(:,3);

    %����1��ƽ��ֵ
    % Cs1s=mean(reshape(Cs,100,[]),1)';
    % uavg=mean(reshape(u,100,[]),1)';
    % vavg=mean(reshape(v,100,[]),1)';
    % wavg=mean(reshape(w,100,[]),1)';
    
    % hhmmssddmoyy
    hh=floor(head1(:,9)/256);
    mm=head1(:,9)-256*hh;
    ss=floor(head1(:,10)/256);
    dd=head1(:,10)-256*ss;
    mo=floor(head1(:,11)/256);
    yy=head1(:,11)-256*mo;
    t=datetime(yy,mo,dd,hh,mm,ss);
    t1=t+hours(8)-seconds(18);
    [y,m,d] = ymd(t1);
    [h,f,s] = hms(t1);
    
    g=ones(1,100);
    y=y*g;y=reshape(y',1,[])';
    m=m*g;m=reshape(m',1,[])';
    d=d*g;d=reshape(d',1,[])';
    h=h*g;h=reshape(h',1,[])';
    f=f*g;f=reshape(f',1,[])';
    s=s*g;s=reshape(s',1,[])';
    
    ddtm=[y m d h f s];
      
    vs=sqrt(v1.*v1+v2.*v2+v3.*v3);
    vs1=reshape(vs',1,[])';
    %vs2=mean(reshape(vs1,100,[]),1)';
    %������λ��
    Tv=Cs.*Cs/403/100/100;
    %Tv=detrend(Tv,'constant');
  
    %%1��ƽ������ά���ٷ������ϳɷ�����Լ���λ��
    %c=length(u);
    %xulie=[1:1:c]';
    %UVW=[xulie ddtm u v w vs1 Tv]; 
    %save([savepath fn(1:length(fn)-4)],'xulie','y','m','d','h','f','s','u','v','w','vs1','Tv');
    
    %figure
    %subplot(2,2,1);
    %plot(u,'.');
    %title('u');
    %subplot(2,2,2);
    %plot(v,'.');
    %title('v');
    %subplot(2,2,3);
    %plot(w,'.');
    %title('w');
    %subplot(2,2,4);

    %plot(Cs,'.');
    %title('Cs');  
    %set(gcf,'visible','off');
    %saveas(gcf,[savepath fn(1:length(fn)-4)],'png');  

    figure
    plot(Tv,'.');
    title('Tv');  
    set(gcf,'visible','on');
    saveas(gcf,[savepath fn(1:length(fn)-4)],'png');   
end

    %suptitle('UAT64-2020-07-30-17-00-00');
