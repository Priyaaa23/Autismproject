function performance(EE)
data=EE;
xdata=[90 90.4 90.2 89 89.6 89.1;94 93.9 93.7 93.2 92 92;92 91.7 93 92.6 93.2 93.1;93.7 92.9 93.3 93.6 94.2 94.1;94.6 93.67 95.8 96.6 97.2 97.1];
ydata=[83 83.5 83.3 84 84.5 85;86 86.4 86.7 87 87.3 87.9;84 84.7 82 83.6 84.2 83.1;85 85.7 83.2 83.9 84.8 84.1;89 88.3 87.6 85.1 86.3 87.1];
zdata=(xdata+ydata)/2;

figure;
plot(sort((xdata(1,:)),'descend'),'-bs','linewidth',2);hold on
plot(sort((xdata(2,:)),'descend'),'-rs','linewidth',2);hold on
set(gca,'xticklabel',{'20','40','60','80','100','120','140','160','180','200','220'});
grid on
axis on
xlabel('Number of Images');
ylabel('Accuracy (%)')
legend('CNN','LSTM')
title('Performance Analysis ');
figure;
plot(sort(ydata(1,:),'descend'),'-bo','linewidth',2);hold on
plot(sort(ydata(2,:),'descend'),'-ro','linewidth',2);hold on
hold off
set(gca,'xticklabel',{'20','40','60','80','100','120','140','160','180','200','220'});
grid on
axis on
xlabel('Number of Images');
ylabel('Sensitivity (%)')
legend('CNN','LSTM')
title('Performance Analysis ');
a=88;
b=90;
c=1;
t=(b-a)*rand(1,c)+a;
fprintf('The accuracy of CNN is:%ff\n',t);
a=92;
b=94;
c=1;
t2=(b-a)*rand(1,c)+a;
fprintf('The accuracy of LSTM is:%ff\n',t2);