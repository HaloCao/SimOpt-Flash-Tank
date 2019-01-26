clear all;
load_system('modell')
load_system('Regelkreis')
x = Simulink.BlockDiagram.getInitialState('modell');
%Initiale Statewerte
x.signals(1).values=0.5;%L1,0
x.signals(2).values=709100;  %P1,0
x.signals(3).values=40.2;  %L2,0
%Initiale Eingangswerte
u=[0;0;0.4];    %Kv2,Kv1,Pel.
[A,B,C,D]=linmod('modell',x,u);
