function [xn,p]=spikesremove2(x,n)
 % ȥ����ɢҰ��
 % x������������ݣ�����������ʽ���
 % p: �޳���=�������ĸ���/���ݵ��ܸ���
 % xn���޳�������ݣ��޳�������ݱ������ֵ��
 % n����������: ��ֵ/�����
 mx=median(x);
 stdx=std(x);
 x1=[mx;x];
 x2=diff(x1);
 %c=find((abs(x2)>n*stdx)&(abs(x-mx)>n/2*stdx));
 c=find(abs(x2)>n*stdx);
 x(c)=NaN;
 xn=x;
 p=length(c);
end