function [ax,hl1,hl2] = plotxx(x1,y1,x2,y2,xlabels,ylabels); 
%PLOTXX - Create graphs with x axes on both top and bottom  
% 
%Similar to PLOTYY, but ... 
%the independent variable is on the y-axis,  
%and both dependent variables are on the x-axis. 
% 
%Syntax: [ax,hl1,hl2] = plotxx(x1,y1,x2,y2,xlabels,ylabels); 
% 
%Inputs:  X1,Y1 are the data for the first line (black) 
%         X2,Y2 are the data for the second line (red) 
%         XLABELS is a cell array containing the two x-labels 
%         YLABELS is a cell array containing the two y-labels 
% 
%The optional output handle graphics objects AX,HL1,HL2 
%allow the user to easily change the properties of the plot. 
% 
%Example: Plot temperature T and salinity S  
%         as a function of depth D in the ocean 
% 
%D = linspace(-100,0,50); 
%S = linspace(34,32,50); 
%T = 10*exp(D/40); 
%xlabels{1} = 'Temperature (C)'; 
%xlabels{2} = 'Salinity'; 
%ylabels{1} = 'Depth(m)'; 
%ylabels{2} = 'Depth(m)'; 
%[ax,hlT,hlS] = plotxx(T,D,S,D,xlabels,ylabels); 
 
 
%The code is inspired from page 10-26 (Multiaxis axes) 
%of the manual USING MATLAB GRAPHICS, version 5. 
% 
%Tested with Matlab 5.3.1 and above on PCWIN 
 
%Author: Denis Gilbert, Ph.D., physical oceanography 
%Maurice Lamontagne Institute, Dept. of Fisheries and Oceans Canada 
%email: gilbertd@dfo-mpo.gc.ca  Web: http://www.qc.dfo-mpo.gc.ca/iml/ 
%November 1997; Last revision: 01-Nov-2001 
 
if nargin < 4 
   error('Not enough input arguments') 
elseif nargin==4 
   %Use empty strings for the xlabels 
   xlabels{1}=' '; xlabels{2}=' '; ylabels{1}=' '; ylabels{2}=' '; 
elseif nargin==5 
   %Use empty strings for the ylabel 
   ylabels{1}=' '; ylabels{2}=' '; 
elseif nargin > 6 
   error('Too many input arguments') 
end 
 
if length(ylabels) == 1 
   ylabels{2} = ' '; 
end 
 
if ~iscellstr(xlabels)  
   error('Input xlabels must be a cell array') 
elseif ~iscellstr(ylabels)  
   error('Input ylabels must be a cell array') 
end 

hl1=line(x1,y1,'Color','b','LineWidth',1.5); 
ax(1)=gca; 
set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); %����ķ�Χ
set(gcf,'unit','centimeters','position',[3 5 8 10]);
set(gcf,'unit','centimeters','position',[3 5 0.5 10]);
set(gca,'Position',[.15 .15 .8 .75]);

%��ע��x1��y1����
% text(x1,y1,'*','FontSize',8,'Color','b','HorizontalAlignment','center');

%����x��y��label
figure_FontSize=10;
set(get(gca,'XLabel'),'FontSize',figure_FontSize,'FontName','Times New Roman','Vertical','top');
set(get(gca,'YLabel'),'FontSize',figure_FontSize,'FontName','Times New Roman','Vertical','middle');
% figure��position�е�[left bottom width height] ��ָfigure�Ŀɻ�ͼ�Ĳ��ֵ����½ǵ������Լ���Ⱥ͸߶ȡ�

set(ax(1),'XColor','b','YColor','k'); 

% set(gca, 'XLim',[20 32]);%X���������ʾ��Χ
set(gca,'Xlim',[6 8],'Xtick',6:1:8);
set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); 


ax(2)=axes('Position',get(ax(1),'Position'),... 
   'XAxisLocation','top',... 
   'YAxisLocation','right',... 
   'ytick',[],...
   'Color','none',... 
   'XColor',[255 97 0]/255,'YColor','k'); 
% text(x2,y2,'*','FontSize',8,'Color',[255 97 0]/255,'HorizontalAlignment','center');


%����x��y��
figure_FontSize=10;
set(get(gca,'XLabel'),'FontSize',figure_FontSize);
set(get(gca,'YLabel'),'FontSize',figure_FontSize,'Vertical','middle');


hl2=line(x2,y2,'Color',[255 97 0]/255,'LineWidth',1.5,'Parent',ax(2)); 


set(gca,'Xlim',[308 314],'Xtick',308:3:314);
set(gca,'ylim',[1280,1780],'ytick',1280:100:1780); 


%label the two x-axes 
set(get(ax(1),'xlabel'),'string',xlabels{1}) 
set(get(ax(2),'xlabel'),'string',xlabels{2}) 
set(get(ax(1),'ylabel'),'string',ylabels{1}) 
% set(get(ax(2),'ylabel'),'string',ylabels{2})


