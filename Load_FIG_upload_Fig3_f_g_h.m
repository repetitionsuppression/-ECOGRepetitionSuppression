clear all;
close all;
clc;


filename        = '/export/data/duerschm/MMN/repetitionSuppression/figures/FIG3_f_g_h.mat';
FIG3            = load( filename );

ti              = [-.2:.01:.4];


hold on
shadedErrorBar( ti,FIG3.coupling.thetabeta.M,FIG3.coupling.thetabeta.E,'r' );
myaxis('time [sec]','kappa' )
xlim([-.2 .4])
line( [-.2 .4],[FIG3.coupling.thetabeta.ci(1) FIG3.coupling.thetabeta.ci(1)])


%% phase plot average across best describing pairs

bincenter               = FIG3.coupling.thetabeta.bincenter;

figure;
imagesc( ti,bincenter, FIG3.coupling.thetabeta.tp )
myIMaxis('time [sec]','theta phase' )





Phal                    = FIG3.coupling.thetabeta.Phal;
avrPhase                = FIG3.coupling.thetabeta.avrPhase;


figure; hold on
plot( bincenter,Phal,'color',[.7 .7 .7]);
myaxis('theta phase','beta phase' )
plot( bincenter,avrPhase,'r--' )
xlim([-pi pi])
ylim([-pi pi])
pbaspect([1 .3 1])





