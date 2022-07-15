clear all
close all
clc





filename        = '/export/data/duerschm/MMN/repetitionSuppression/figures/FIG3a.mat';
FIG3            = load( filename );


figure; hold on
plot( FIG3.RS.Spektrum.M,'b')
plot( FIG3.SR.Spektrum.M,'g')
shadedErrorBar( 1:30,FIG3.RS.Spektrum.M,FIG3.RS.Spektrum.E,'b' )
shadedErrorBar( 1:30,FIG3.SR.Spektrum.M,FIG3.SR.Spektrum.E,'g' )
legend( 'RS+','SR+' )
myaxis('frequency','amplitude [db]' )

figure; hold on
plot( FIG3.SRminus.Spektrum.M,'k')
plot( FIG3.RSminus.Spektrum.M,'r')
shadedErrorBar( 1:30,FIG3.SRminus.Spektrum.M,FIG3.SRminus.Spektrum.E,'k' )
shadedErrorBar( 1:30,FIG3.RSminus.Spektrum.M,FIG3.RSminus.Spektrum.E,'r' )
legend('SR+ RS+','SR- RS-'  )
myaxis('frequency','amplitude [db]' )
