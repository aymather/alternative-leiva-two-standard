function stimuluscommand = ALTS_makevisualcue(settings,symbol,wcolor)

% preallocate
stimuluscommand = '';
polygonstring = '';

% make shorter
OW = settings.screen.outwindow;
OD = settings.screen.outwindowdims;
COL = settings.layout.color.options;
LU = OD(3)/50;

% get layout
color = COL(wcolor,:);
screenposition = [OD(3)*1/2 OD(4)*1/2]; % center

% make stimulus
if symbol == 2 % training: white vertical line
    polygonlayout = [...
        -1*LU -2*LU;...
        +1*LU -2*LU;...
        +1*LU +2*LU;...
        -1*LU +2*LU;...
        ];
    polygonposition(:,1) = polygonlayout(:,1) + screenposition(1);
    polygonposition(:,2) = polygonlayout(:,2) + screenposition(2);
    for is = 1:size(polygonposition,1)
        polygonstring = [polygonstring num2str(polygonposition(is,:)) '; '];
    end
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'FillPoly' char(39) ',' num2str(OW) ', [' num2str(color) '] , [' polygonstring ']); '];      
elseif symbol == 3 % upward triangle
    polygonlayout = [...
        (-2-sqrt(2)/2)*LU +2*LU;...
        +0*LU -2*LU;...
        (+2+sqrt(2)/2)*LU +2*LU;...
        ];
    polygonposition(:,1) = polygonlayout(:,1) + screenposition(1);
    polygonposition(:,2) = polygonlayout(:,2) + screenposition(2);
    for is = 1:size(polygonposition,1)
        polygonstring = [polygonstring num2str(polygonposition(is,:)) '; '];
    end
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'FillPoly' char(39) ',' num2str(OW) ',[' num2str(color) '], [' polygonstring ']); '];
elseif symbol == 4 % downward triangle
    polygonlayout = [...
        (-2-sqrt(2)/2)*LU -2*LU;...
        +0*LU +2*LU;...
        (+2+sqrt(2)/2)*LU -2*LU;...
        ];
    polygonposition(:,1) = polygonlayout(:,1) + screenposition(1);
    polygonposition(:,2) = polygonlayout(:,2) + screenposition(2);
    for is = 1:size(polygonposition,1)
        polygonstring = [polygonstring num2str(polygonposition(is,:)) '; '];
    end
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'FillPoly' char(39) ',' num2str(OW) ',[' num2str(color) '], [' polygonstring ']); '];
elseif symbol == 5 % square
    polygonlayout = [...
        -2*LU -2*LU;...
        +2*LU -2*LU;...
        +2*LU +2*LU;...
        -2*LU +2*LU;...
        ];
    polygonposition(:,1) = polygonlayout(:,1) + screenposition(1);
    polygonposition(:,2) = polygonlayout(:,2) + screenposition(2);
    for is = 1:size(polygonposition,1)
        polygonstring = [polygonstring num2str(polygonposition(is,:)) '; '];
    end
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'FillPoly' char(39) ',' num2str(OW) ',[' num2str(color) '], [' polygonstring ']); '];    
elseif symbol == 6 % diamond
    polygonlayout = [...
        +0*LU -2*LU;...
        +2*LU +0*LU;...
        +0*LU +2*LU;...
        -2*LU +0*LU;...
        ]*sqrt(2);
    polygonposition(:,1) = polygonlayout(:,1) + screenposition(1);
    polygonposition(:,2) = polygonlayout(:,2) + screenposition(2);
    for is = 1:size(polygonposition,1)
        polygonstring = [polygonstring num2str(polygonposition(is,:)) '; '];
    end
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'FillPoly' char(39) ',' num2str(OW) ',[' num2str(color) '], [' polygonstring ']); '];      
elseif symbol == 7 % cross    
    polygonlayout = [...
        -1*LU -2*LU;...
        +1*LU -2*LU;...
        +1*LU -1*LU;...
        +2*LU -1*LU;...
        +2*LU +1*LU;...
        +1*LU +1*LU;...
        +1*LU +2*LU;...
        -1*LU +2*LU;...
        -1*LU +1*LU;...
        -2*LU +1*LU;...
        -2*LU -1*LU;...
        -1*LU -1*LU;...
        ];
    polygonposition(:,1) = polygonlayout(:,1) + screenposition(1);
    polygonposition(:,2) = polygonlayout(:,2) + screenposition(2);
    for is = 1:size(polygonposition,1)
        polygonstring = [polygonstring num2str(polygonposition(is,:)) '; '];
    end
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'FillPoly' char(39) ',' num2str(OW) ',[' num2str(color) '], [' polygonstring ']); '];      
elseif symbol == 8 % hexagon
    polygonlayout = [...
        -1*LU -2*LU;...
        +1*LU -2*LU;...
        +2*LU -0*LU;...
        +1*LU +2*LU;...
        -1*LU +2*LU;...
        -2*LU +0*LU;...
        ];
    polygonposition(:,1) = polygonlayout(:,1) + screenposition(1);
    polygonposition(:,2) = polygonlayout(:,2) + screenposition(2);
    for is = 1:size(polygonposition,1)
        polygonstring = [polygonstring num2str(polygonposition(is,:)) '; '];
    end
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'FillPoly' char(39) ',' num2str(OW) ',[' num2str(color) '], [' polygonstring ']); '];      

elseif symbol == 9 % two horiztonal lines, one vertical
    polygonlayout = [...
        -2*LU -2*LU;...
        +2*LU -2*LU;...
        +2*LU -1*LU;...
        +.5*LU -1*LU;...
        +.5*LU +1*LU;...
        +2*LU +1*LU;...
        +2*LU +2*LU;...
        -2*LU +2*LU;...
        -2*LU +1*LU;...
        -.5*LU +1*LU;...
        -.5*LU -1*LU;...
        -2*LU -1*LU;...
        ];
    polygonposition(:,1) = polygonlayout(:,1) + screenposition(1);
    polygonposition(:,2) = polygonlayout(:,2) + screenposition(2);
    for is = 1:size(polygonposition,1)
        polygonstring = [polygonstring num2str(polygonposition(is,:)) '; '];
    end
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'FillPoly' char(39) ',' num2str(OW) ',[' num2str(color) '], [' polygonstring ']); '];      
elseif symbol == 10 % circle
    stimuluscommand = [stimuluscommand 'Screen(' char(39) 'DrawDots' char(39) ',' num2str(OW) ',[' num2str(screenposition) '], ' num2str(64) ', [' num2str(color) '],[0 0], 1); '];
end
