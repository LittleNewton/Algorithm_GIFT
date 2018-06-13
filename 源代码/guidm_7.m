%GuiDm_7   
% Copyright S. Nakamura, 1995
clf
h1=figure(2);
set(h1,'Position',[30,50,280,100], ...
    'Color',[0,0.5, 0.5],'Name','GuiDm_7')
j=uicontrol('Position',[ 0,60,250,30], ...
    'Style','text',...
    'String','Select from A, B, C, D or Close');
k=uicontrol('Style','Popup',...
            'String','A|B|C|D|Close',...
            'Position',[ 0,30,100,30], ...
 'Callback', [ ...
    'val = get(k,''Value'');',...
    '    if val == 1, fprintf(''A is selected\n''),',...
    'elseif val == 2, fprintf(''B is selected\n''),',...
    'elseif val == 3, fprintf(''C is selected\n''),',...
    'elseif val == 4, fprintf(''D is selected\n''),',...
    'elseif val == 5, close(h1),',...
    'end' ...
             ]);

