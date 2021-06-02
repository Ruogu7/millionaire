% 样本库的最高值为99，才能保证这种 在样本库中观望 - 在随后的观测库中选择的模式下，取得最优值。
% 即，多大的样本库，可以以99.75%的置信，囊括99，而不包含100.
% 其实，这个数值，几乎可以用正态分布的一些特征值，来计算。
% 本模型，就从MC 蒙托卡罗随机方法来验证
% 流程：
% 1. 设计随机数100万次
% 2. 统计前面X个样本的最大值
% 3. 当最大值为99，则当次随机数阵列，为有效序列
% 4. 通过100w次中，有效序列的次数。
% 5. 当有效次数，达到99.75%，即取这个样本库的容量X。

function ValidSequRate = GetRateWhenX(X)
%% 获取样本库为X时，样本库包含99，而不包含100的概率
% X: 样本库的容量, 范围：2~99
% 测试： ValidSequRate = GetRateWhenX(20)
N = 100;
Time_ArrayWith99 = 0;
Times_Test = 100000;
for i = 1:Times_Test
    RandomArray = randperm(N, N);
    subRandomArray = RandomArray(1:X);
    
    if max(subRandomArray) == 99
        Time_ArrayWith99 = Time_ArrayWith99 + 1;
    end
end
ValidSequRate = Time_ArrayWith99/Times_Test;
