function [xn,p]=spikesremove3(x,hz,min,n)
 % ȥ��N����������Ұ��
 % x������������ݣ�����������ʽ���
 % p: �޳���=�������ĸ���/���ݵ��ܸ���
 % xn���޳�������ݣ��޳�������ݱ������ֵ��
 % n����������: ��ֵ/�����
 x1=x-fltrend1(x,hz,min);
 stdx=std(x1);
 c=find(abs(x1)>n*stdx);
 x(c)=NaN;
 xn=x;
 p=length(c);
end