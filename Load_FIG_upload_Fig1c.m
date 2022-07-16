clear all
close all
clc

time = linspace( -.2,.6,267);

filename = '/export/data/daeckert/oddballECoG/Info/forPictures/FIG1_c.mat';
FIG1 = load(filename);

figure;
shadedErrorBar( time, FIG1.SR.M,FIG1.SR.E,'g',1);
myaxis('time','HFA amplitude' )
ylim([-.02 .12])
legend('HFA amplitude')
