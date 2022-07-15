clear all
close all
clc


GetParameter
% saving


filename        = '/export/data/duerschm/MMN/repetitionSuppression/figures/FIG3c.mat';
FIG3            = load( filename );




for f = 1:2;
    
    
    
    figure( f+2 )
    polar(  FIG3.bincenter ,repmat( .3,[50 1])')
    hold on
    polar(  FIG3.bincenter , FIG3.polar( f ).RS.M,'b' )
    polar(  FIG3.bincenter , FIG3.polar( f ).RS.M-FIG3.polar( f ).theta.RS.E,'b' )
    polar(  FIG3.bincenter , FIG3.polar( f ).RS.M+FIG3.polar( f ).theta.RS.E,'b' )
    polar(  FIG3.bincenter ,FIG3.polar( f ).SR.M,'g' )
    polar(  FIG3.bincenter ,FIG3.polar( f ).SR.M-FIG3.polar( f ).SR.E,'g' )
    polar(  FIG3.bincenter ,FIG3.polar( f ).SR.M+FIG3.polar( f ).SR.E,'g' )
    

end





