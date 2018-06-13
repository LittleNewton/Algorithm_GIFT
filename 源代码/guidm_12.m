% GuiDm_12   Results as static text 
% Copyright S. Nakamura, 1995
close,clear
h1=figure(2);
set(h1,'Position',[130,250,480,210], ...
    'Color',[0,0.5, 0.5],'Name','GuiDm_12 Results in Text',...
    'NumberTitle','off')
axis('off'); hold on
ed0 = uicontrol(gcf, 'Style','text', ...
       'Position', [110,150, 260,40],...
       'String',...
       ' Edit the 3-by-3 matrix and hit return.');
ed1 = uicontrol(gcf, 'Style','text', ...
       'Position', [110,50, 260,40],...
       'String',' Eigenvalues');
ed2 = uicontrol(gcf, 'Style','text', ...
       'Position', [110,20, 260,40],...
       'String',' ');
ed3 = uicontrol(gcf, 'Style','edit', ...
       'Position', [110,110, 210,40],...
       'String','    [1 3 5; 5 -2 1; 3 1 7]',...
        'CallBack',...
        ['axis off; inp_txt=get(ed3,''String'');',...
        'eigen=eig(str2num(inp_txt));',...
        'ans=[num2str(eigen(1)),''     '',',...
        'num2str(eigen(2)),''     '',',...
        'num2str(eigen(3))];',...
        'set(ed2,''String'',ans) ']);

