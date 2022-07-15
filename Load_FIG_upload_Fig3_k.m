clear all;
close all;
clc;

filename        = '/export/data/duerschm/MMN/repetitionSuppression/figures/FIG3k.mat';
FIG3            = load( filename );



time        = linspace( -.5,.5,500);


ntime = linspace( -.10,.4,125 );

%%


%% maximal time point of MI
figure
imagesc( ntime,ntime,FIG3.MI.Matrix )
cmap = [ .7 .7 .7;summer];
pbaspect([1 1 1])
colormap( cmap )

xlim([-.05 .4])
ylim([-.05 .4])
% pbaspect([1 1 1])
line([0 0],[-.1 .4])
line([-.1 .4],[0 0])
line([-.1 .4],[-.1 .4])
myIMaxis('RS time series','SR time series' )
% colormap gray


figure;
%% RS time series
shadedErrorBar( ntime,FIG3.MI.RS.M,FIG3.MI.RS.E);
myaxis('RS time series','MI' )
xlim([-.05 .4])
ylim([.80 .865])
line([-.1 .4],[FIG3.MI.RS.ci( 1 ) FIG3.MI.RS.ci( 1 )])


figure;
%% RS time series
shadedErrorBar( ntime,FIG3.MI.SR.M,FIG3.MI.SR.E);
myaxis('RS time series','MI' )
xlim([-.05 .4])
ylim([.80 .865])
line([-.1 .4],[FIG3.MI.RS.ci( 1 ) FIG3.MI.RS.ci( 1 )])



