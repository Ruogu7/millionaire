% ����������ֵΪ99�����ܱ�֤���� ���������й��� - �����Ĺ۲����ѡ���ģʽ�£�ȡ������ֵ��
% �������������⣬������99.75%�����ţ�����99����������100.
% ��ʵ�������ֵ��������������̬�ֲ���һЩ����ֵ�������㡣
% ��ģ�ͣ��ʹ�MC ���п��������������֤
% ���̣�
% 1. ��������100���
% 2. ͳ��ǰ��X�����������ֵ
% 3. �����ֵΪ99���򵱴���������У�Ϊ��Ч����
% 4. ͨ��100w���У���Ч���еĴ�����
% 5. ����Ч�������ﵽ99.75%����ȡ��������������X��

function ValidSequRate = GetRateWhenX(X)
%% ��ȡ������ΪXʱ�����������99����������100�ĸ���
% X: �����������, ��Χ��2~99
% ���ԣ� ValidSequRate = GetRateWhenX(20)
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
