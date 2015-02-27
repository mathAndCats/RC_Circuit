## Copyright (C) 2015 Lauren
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

%% User Inputs:
Rm = 10; % ohms
Ro = 1000; %  ohms 
C = 0.1e-6; % 0.1 micro-farad
V1 = 5;
V2 = 10;

% Let Vout get to steady state
Vinit = V1;
VmArray = V1*ones(1,10000);
VmArray(2000:end) = V2;
[timeArray, VoArray] =  RC_CircuitSim(Rm, Ro, C, VmArray, Vinit);

plotRC_CircuitScript;

% Change Vm back to V1 before Vout gets to steady state
Vinit = V1;
VmArray = V1*ones(1,10000);
VmArray(2000:3000) = V2;
[timeArray, VoArray] =  RC_CircuitSim(Rm, Ro, C, VmArray, Vinit);

plotRC_CircuitScript;

% Make V2 step even shorter
Vinit = V1;
VmArray = V1*ones(1,10000);
VmArray(2000:2200) = V2;
[timeArray, VoArray] =  RC_CircuitSim(Rm, Ro, C, VmArray, Vinit);

plotRC_CircuitScript;

% ... and even shorter-- like a voltage spike a motor might generate.
Vinit = V1;
VmArray = V1*ones(1,10000);
VmArray(2000:2050) = V2;
[timeArray, VoArray] =  RC_CircuitSim(Rm, Ro, C, VmArray, Vinit);

plotRC_CircuitScript;


