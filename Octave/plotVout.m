%% plotVout
function plotVout(Rm, Ro, C, V1, V2)
ns = 1e-9;
t = 0:ns:ns*10^4;
timeLabel = t/ns;
a = (Ro+Rm)/(C*Ro*Rm);
Vout = (V2*Ro)/(Ro+Rm) + ((V1-V2)*Ro)/(Ro+Rm)*exp(-a.*t);

figure;
plot(t,Vout);
axisHandle = gca;
set(axisHandle,'xTickLabel', timeLabel);
xlabel('Time (ns)')
endfunction
