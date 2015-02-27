% RC_CircuitSim
% Function to simulate the transient response of an RC circuit
function [timeArray, VoutArray] = RC_CircuitSim( ...
    Rm, Ro, C, VmArray, Vinit)

% initial conditions
VoutInit = (Vinit*Ro) / (Ro+Rm);

% time increment
deltaT = 1e-9;

for tIndex = 1:length(VmArray)
    
    if tIndex==1
        prevVout = VoutInit;
    else
        prevVout = VoutArray(tIndex-1);
    end
    
    a = (Ro+Rm)/(C*Ro*Rm);
    
    % eventual steady state Vout
    ssVout = (VmArray(tIndex)*Ro) / (Ro+Rm);
    
    newVout = ssVout + (prevVout - ssVout)*exp(-a*deltaT);
    
    VoutArray(tIndex) = newVout;
    timeArray(tIndex) = deltaT*tIndex;
end
        
endfunction
