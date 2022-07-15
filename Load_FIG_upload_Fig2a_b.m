clear all
close all
clc


time = linspace( -.2,.6,267);

filename    = '/export/data/duerschm/MMN/repetitionSuppression/figures/FIG2.mat';
FIG2        = load( filename );


figure;
plot( time,FIG2.RS.M );

hold on
color = {'b','g','r'};
for k = 1:3;
    shadedErrorBar( time,FIG2.RS.M( :,k ),FIG2.RS.E( :,k )',color{k});
end
myaxis('time','HFA amplitude' )
ylim([-.05 .20])
legend('S1','S2','S3')






figure; 
plot( time,FIG2.SR.M );

hold on
color = {'b','g','r'};
for k = 1:3;
    shadedErrorBar( time,FIG2.SR.M( :,k ),FIG2.SR.E( :,k )',color{k});
end
myaxis('time','HFA amplitude' )
ylim([-.05 .2])
legend('S1','S2','S3')


