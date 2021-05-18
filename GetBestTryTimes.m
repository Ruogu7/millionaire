function [BestTryTimes timeRate]= GetBestTryTimes(N)
%% 功能：从随机的数值中，按上述规则，去获取值。
% N: 多少次测试, 范围：5~1000
% 测试： [BestTryTimes timeRate]= GetBestTryTimes(100)

timesTest = 1000;
highest_ideaValue = ones(1,N-1);

for j = 1:N-1
    ideaValue_array = ones(1,timesTest);
    
    for i = 1:timesTest
        ideaValue_array(i) = GetIdeaValue(j,N);
    end
    highest_ideaValue(j) = mean(ideaValue_array);
    
end

% 对highest_ideaValue进行可视化

plot(highest_ideaValue,'-r');
hold on; 

[maxValue, Value_Loc] = max(highest_ideaValue)
BestTryTimes = Value_Loc;
timeRate = Value_Loc/N;

