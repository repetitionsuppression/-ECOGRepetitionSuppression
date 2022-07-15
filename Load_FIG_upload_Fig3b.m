clear all
close all
clc


filename        = '/export/data/duerschm/MMN/repetitionSuppression/figures/FIG3b.mat';
FIG3            = load( filename );


M = FIG3.spectrum.bar.M;
E = FIG3.spectrum.bar.E;


myfigure; hold on
x = [1:12];
color = {'b','g','r','m'};
for k = 1:4;
    y = [0 4 8]+k;
    bar( x( y ),M( x( y )),.2,'edgecolor',color{k},'facecolor',color{k});
end
errorbar( x,M( x ),E( x ),'linestyle','none','linewidth',3 )
ylim([15 40])
xlim([0 13])
set( gca,'xtick',x,'xticklabels',{'SR-RS+','SR+RS-','SR-RS-','SR+RS+'})
myaxis('frequency','amplitude [db]')



