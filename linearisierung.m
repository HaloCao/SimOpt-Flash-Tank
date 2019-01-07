clear all;
load_system('modell')
%load_system('Regelkreis')
x = Simulink.BlockDiagram.getInitialState('modell');

x.signals(1).values=8;
x.signals(2).values=7;
x.signals(3).values=4;

u=[0;0;0];
[A,B,C,D]=linmod('modell',x,u);