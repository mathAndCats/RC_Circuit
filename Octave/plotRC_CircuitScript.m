
figure; grid on; hold on;
plot(timeArray, VmArray, 'r');
plot(timeArray, VoArray,'b');
legendText{1} = 'Vm';
legendText{2} = 'Vo';
xlabel('Time (ns)');
ylabel('Voltage');
set(gca,'ylim',[min(VmArray)-1 max(VmArray)+1]);
timeLabel = timeArray/1e-9;
set(gca,'XTickLabel', timeLabel);

