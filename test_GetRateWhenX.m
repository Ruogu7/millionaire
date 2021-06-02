% function [BestTryTimes timeRate]= GetBestTryTimes(N)
%% 功能：从随机的数值中，按上述规则，去获取值。
% N: 多少次测试, 范围：5~1000
% 测试： [BestTryTimes timeRate]= GetBestTryTimes(100)


ValidSequRate_withX = zeros(1,99);


for i = 1:99
    ValidSequRate_withX(i) = GetRateWhenX(i);
end


figure;
plot(ValidSequRate_withX,'-r');

sum(ValidSequRate_withX<0.9975)
