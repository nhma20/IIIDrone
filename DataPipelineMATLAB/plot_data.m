data = importdata('test2.txt');
data = data.data;

% for i=100
%     scatter3(data(i,14),data(i,15),data(i,16))
%     hold on
%     scatter3(data(i,17),data(i,18),data(i,19))
%     scatter3(data(i,20),data(i,21),data(i,22))
%     scatter3(data(i,23),data(i,24),data(i,25))
%     scatter3(data(i,26),data(i,27),data(i,28))
%     scatter3(data(i,29),data(i,30),data(i,31))
%     scatter3(data(i,32),data(i,33),data(i,34))
%     scatter3(data(i,35),data(i,36),data(i,37))
%     hold off
%     
% end

plot(data(1:100,1),data(1:100,8));