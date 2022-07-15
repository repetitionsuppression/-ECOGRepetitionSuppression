clear all
close all
clc

filename = '/export/data/daeckert/oddballECoG/Info/forPictures/FIG1_b_d.mat';
FIG1 = load(filename);


pll = 1:412;
figure;
A = imread( '/export/data/daeckert/oddballECoG/Info/forPictures/FIG1_b_d_MNI.png' );
imshow( A ); hold on
color = {'b','g','r' };
plot(FIG1.MNI.gc(pll,3),FIG1.MNI.gc(pll,4),'.','MarkerSize',8,'Color','w')

hold on
plot(FIG1.MNI.gc(FIG1.MNI.srch,3),FIG1.MNI.gc(FIG1.MNI.srch,4),'o','MarkerSize',9,'LineWidth',4,'Color','g');
hold on
plot(FIG1.MNI.gc(FIG1.MNI.rssrch,3),FIG1.MNI.gc(FIG1.MNI.rssrch,4),'o','MarkerSize',9,'LineWidth',4,'Color','m');


figure;
A = imread( '/export/data/duerschm/MMN/repetitionSuppression/data/MNI.png' );
imshow( A ); hold on
color = {'b','g','r' };
plot(FIG1.MNI.gc(pll,3),FIG1.MNI.gc(pll,4),'.','MarkerSize',8,'Color','w')

hold on
plot(FIG1.MNI.gc(FIG1.MNI.rsch,3),FIG1.MNI.gc(FIG1.MNI.rsch,4),'o','MarkerSize',9,'LineWidth',4,'Color','b');
hold on
plot(FIG1.MNI.gc(FIG1.MNI.rssrch,3),FIG1.MNI.gc(FIG1.MNI.rssrch,4),'o','MarkerSize',9,'LineWidth',4,'Color','m');

