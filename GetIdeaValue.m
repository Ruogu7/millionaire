function idea = GetIdeaValue(i,N)
%% ���ܣ����������ֵ�У�����������ȥ��ȡֵ��
% N: ���ٴβ���
% i�ķ�Χ��1~N-1
% ���ԣ� idea = GetIdeaValue(5��10)

% ���������
RandomArray = randperm(N, N);

if i == N-1
     idea = RandomArray(N);
    return; 
end   

Threshold = max(RandomArray(1:i));
for k = i+1:N-1
    % ������Threshold��ֵ��ĵ�һ����������¼ȡ
   if  Threshold < RandomArray(k)
       idea = RandomArray(k);
       return;
   end
   % ʼ��û����������¼ȡ���һ��
   idea = RandomArray(N);
end
