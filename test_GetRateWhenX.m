% function [BestTryTimes timeRate]= GetBestTryTimes(N)
%% ���ܣ����������ֵ�У�����������ȥ��ȡֵ��
% N: ���ٴβ���, ��Χ��5~1000
% ���ԣ� [BestTryTimes timeRate]= GetBestTryTimes(100)


ValidSequRate_withX = zeros(1,99);


for i = 1:99
    ValidSequRate_withX(i) = GetRateWhenX(i);
end


figure;
plot(ValidSequRate_withX,'-r');

sum(ValidSequRate_withX<0.9975)
