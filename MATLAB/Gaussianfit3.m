function [fitresult,gof] = Gaussianfit3(bins, counts)
%CREATEFIT(CO60BINP1,CO60P1)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : Co60binp1
%      Y Output: Co60p1
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 30-Jan-2018 15:54:24


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( bins, counts );

% Set up fittype and options.
ft = fittype( 'gauss1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf -Inf 0];
opts.StartPoint = [100 1800 13.617600395244];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );