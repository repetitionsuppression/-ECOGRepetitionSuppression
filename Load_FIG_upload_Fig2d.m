clear all
close all
clc


time            = linspace( -.2,.6,267);


filename        = '/export/data/duerschm/MMN/repetitionSuppression/figures/FIG2d.mat';
FIG2            = load( filename );


myfigure; hold on
color = {'g','b','m','r'};
for k = 1:4;
    plot( time,FIG2.RS.Bayes.M( k,: ),'color',color{k});
end
for k =  [3 1 4 2];
    shadedErrorBar( time,FIG2.RS.Bayes.M( k,: ),FIG2.RS.Bayes.E( k,: ),{'color',color{k},'markerfacecolor',color{k}} );
end



line([-.2 .6],log10([.3 .3]))
line([-.2 .6],log10([1 1]))
legend('SR+RS-','SR-RS+','SR+RS+','SR-RS-' )
myaxis('time [sec]','BF' )
set( gca,'xtick',[-.2:.2:.6] )
ylim([log10( .03 ) log10( 10e4 )])
xlim([-.2 .6])
pbaspect([1 1 1])
    