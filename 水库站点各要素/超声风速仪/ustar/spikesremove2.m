function [xn,p]=spikesremove2(x,n)
 % ȥ����ɢҰ��
 % x������������ݣ���һά��������ʽ���
 % p: �޳���=�������ĸ���/���ݵ��ܸ���
 % xn���޳�������ݣ��޳�������ݱ������ֵ��
 % n����������: ��ֵ/�����
 if length(x)>100
    mx=nanmedian(x(1:100));
 else
    mx=nanmedian(x);
 end
 %stdx=std(x);
 x1=[mx;x];
 x2=diff(x1);
 stdx=std(x2);
 if stdx<1
     stdx=1;
 end
 %c=find((abs(x2)>n*stdx)&(abs(x-mx)>n/2*stdx));
 c=find(abs(x2)>n*stdx);
 x(c)=NaN;
 xn=x;
 p=length(c); 
end
