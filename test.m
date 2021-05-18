% function [BestTryTimes timeRate]= GetBestTryTimes(N)
%% 功能：从随机的数值中，按上述规则，去获取值。
% N: 多少次测试, 范围：5~1000
% 测试： [BestTryTimes timeRate]= GetBestTryTimes(100)

BestTryTimes_array = zeros(1,100);
timeRate_array = zeros(1,100);


for jjj = 3:102
    [BestTryTimes_array(jjj-2) timeRate_array(jjj-2)]= GetBestTryTimes(jjj);
end

figure;
plot(BestTryTimes_array,'-r');
figure;
plot(timeRate_array,'-r');

[maxValue, Value_Loc] = max(timeRate_array)
