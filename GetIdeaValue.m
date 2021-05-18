function idea = GetIdeaValue(i,N)
%% 功能：从随机的数值中，按上述规则，去获取值。
% N: 多少次测试
% i的范围：1~N-1
% 测试： idea = GetIdeaValue(5，10)

% 产生随机数
RandomArray = randperm(N, N);

if i == N-1
     idea = RandomArray(N);
    return; 
end   

Threshold = max(RandomArray(1:i));
for k = i+1:N-1
    % 遇到比Threshold数值大的第一个，则立即录取
   if  Threshold < RandomArray(k)
       idea = RandomArray(k);
       return;
   end
   % 始终没有遇到，则录取最后一个
   idea = RandomArray(N);
end
