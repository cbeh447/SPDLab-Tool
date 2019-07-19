% This code is to generate plant layouts and their design details.
% Copyright (C) DTU Chemical Engineering PROSYS All Rights Reserved
% Unauthorized copying of this file, via any medium is strictly prohibited
% Developed by Chitta Ranjan Behera, AI Resul, K.V Gernaey, Gürkan Sin
% Contact: gsi@kt.dtu.dk 

%% Select Effluent Discharge constriants
CODeffLimit=100; % mg COD/l
NH4effLimit=1;   % mg N/l
TNeffLimit=10;   % mg N/l

%% Assign the Priorities to objectives

% Maximise Energy Recovery
w1=0.33; % can vary from 0-1

% Minimise Green House Gases emission
w2=0.33; % can vary from 0-1

% Minimise Total cost (CAPEX+OPEX)
w3=0.33; % can vary from 0-1

%% Generate plantlayout and design alternatives
FindLayoutDesign

% print Layout
Tlayout

% print Design
Tdesign

% plot comparision of top five alternatives
DataBarplot=bar(DataForplot);
grid on
xlabel('COD(mg/l) SNH(mg/l) TN(mg/l) EC(MWh/d) EP(MWh/d) GHGe(tCO2/d) CAPEX(euro/m3.yr) OPEX(euro/m3.yr)')



