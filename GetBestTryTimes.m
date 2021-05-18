function [BestTryTimes timeRate]= GetBestTryTimes(N)
%% ���ܣ����������ֵ�У�����������ȥ��ȡֵ��
% N: ���ٴβ���, ��Χ��5~1000
% ���ԣ� [BestTryTimes timeRate]= GetBestTryTimes(100)

timesTest = 1000;
highest_ideaValue = ones(1,N-1);

for j = 1:N-1
    ideaValue_array = ones(1,timesTest);
    
    for i = 1:timesTest
        ideaValue_array(i) = GetIdeaValue(j,N);
    end
    highest_ideaValue(j) = mean(ideaValue_array);
    
end

% ��highest_ideaValue���п��ӻ�

plot(highest_ideaValue,'-r');
hold on; 

[maxValue, Value_Loc] = max(highest_ideaValue)
BestTryTimes = Value_Loc;
timeRate = Value_Loc/N;

