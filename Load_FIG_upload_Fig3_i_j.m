clear all;
close all;
clc;


filename                = '/export/data/duerschm/MMN/repetitionSuppression/figures/FIG3_i_j.mat';
FIG3                    = load( filename );

ci                      = FIG3.coupling.freqcomp.ci;
F                       = FIG3.coupling.freqcomp.F;
mKappa                  = FIG3.coupling.freqcomp.Kappa.M;
eKappa                  = FIG3.coupling.freqcomp.Kappa.E;


ti = [-.2:.01:.4];




ppc = {'r','m','k','b','g'};
for f = 1:3;

    hold on
    shadedErrorBar( ti,FIG3.coupling.freqcomp.M( f ).dt, FIG3.coupling.freqcomp.E( f ).dt,ppc{f} );
    myaxis('time [sec]','kappa' )
    xlim([-.2 .4])
    
end

line( [-.2 .4],[ci( 1 ) ci( 1 )])



figure; hold on
plot( ti,F );
myaxis('time [sec]','F value' )
xlim([-.2 .4]);





figure; hold on
bar( 1,mean( mKappa( :,1 )),'facecolor','r','edgecolor','r' );
bar( 2,mean( mKappa( :,2 )),'facecolor','m','edgecolor','m' );
bar( 3,mean( mKappa( :,3 )),'facecolor','k','edgecolor','k' );
errorbar( 1:3,mean( mKappa ),eKappa,'linestyle','none','linewidth',3,'color','k' )
set( gca,'xtick',[1:3],'xticklabel',{'theta:beta','theta:alpha','alpha:beta'})
myaxis('n:m phase frequency','kappa' )



