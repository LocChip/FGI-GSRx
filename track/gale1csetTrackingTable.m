%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Copyright 2015-2021 Finnish Geospatial Research Institute FGI, National
%% Land Survey of Finland. This file is part of FGI-GSRx software-defined
%% receiver. FGI-GSRx is a free software: you can redistribute it and/or
%% modify it under the terms of the GNU General Public License as published
%% by the Free Software Foundation, either version 3 of the License, or any
%% later version. FGI-GSRx software receiver is distributed in the hope
%% that it will be useful, but WITHOUT ANY WARRANTY, without even the
%% implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
%% See the GNU General Public License for more details. You should have
%% received a copy of the GNU General Public License along with FGI-GSRx
%% software-defined receiver. If not, please visit the following website 
%% for further information: https://www.gnu.org/licenses/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function tC = gale1csetTrackingTable(tC, trackState)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialises tracking table for Galileo signals
%
% Inputs:
%   tC          - Results from signal tracking for one channel
%   trackState  - Tracking state of channel
%
% Outputs:
%   tC          - Results from signal tracking for one channel
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set functions to be executed for each defined mode
switch(trackState)
    case 'STATE_PULL_IN'
        tC.trackTable =...
            {'CN0fromSNR',4;...            
            'freqDiscrimAtan',4;...
            'freqLoopFilterWide',4;...            
            'phaseDiscrim',4;...
            'phaseLoopFilterWide',4;...
            'phaseFreqFilter',4;...
            'CN0fromNarrowWide',4;...            
            'codeDiscrim',4,;...
            'codeLoopFilter',4;...
            'gale1cBitHandling',4;...
            'lockDetect',4;...            
            'gale1cUpdateChannelState',4};
    case 'STATE_COARSE_TRACKING'        
        tC.trackTable =...
            {'CN0fromSNR',4;...            
            'freqDiscrimAtan',4;...
            'freqLoopFilterNarrow',4;...            
            'phaseDiscrim',4;...
            'phaseLoopFilterNarrow',4;...
            'phaseFreqFilter',4;...
            'CN0fromNarrowWide',4;...            
            'codeDiscrim',4,;...
            'codeLoopFilter',4;...
            'gale1cBitHandling',4;...
            'lockDetect',4;...            
            'gale1cUpdateChannelState',4};
    case 'STATE_FINE_TRACKING'        
        tC.trackTable =...
            {'CN0fromSNR',4;...            
            'freqDiscrimAtan',4;...
            'freqLoopFilterVeryNarrow',4;...            
            'phaseDiscrim',4;...
            'phaseLoopFilterVeryNarrow',4;...
            'phaseFreqFilter',4;...
            'CN0fromNarrowWide',4;...            
            'codeDiscrim',4,;...
            'codeLoopFilter',4;...
            'gale1cBitHandling',4;...
            'lockDetect',4;...            
            'gale1cUpdateChannelState',4};        
end




