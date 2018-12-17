clear all;
load_system('stromseitig')
load_system('Regelkreis')
x = Simulink.BlockDiagram.getInitialState('stromseitig');

x.signals(1).values=4;
x.signals(2).values=2;
u=[0;0];
[A,B,C,D]=linmod('stromseitig',x,u);