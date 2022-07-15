clear all
close all
clc

time = linspace( -.2,.6,267);

filename = '/export/data/daeckert/oddballECoG/Info/forPictures/FIG1e.mat';
FIG1 = load(filename);

figure;
shadedErrorBar( time, FIG1.RS.M,FIG1.RS.E,'b',1);
line([-.2, .6],[FIG1.RS.CO,FIG1.RS.CO])
myaxis('time','F' )
ylim([0 4])
legend('F values')