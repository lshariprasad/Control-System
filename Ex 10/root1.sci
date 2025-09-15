function root1(G, box, text) 
evans(G); 
xgrid(); 
a=gca(); 
if box~=0 then 
a.box="on"; 
a.data_bounds=box; 
end 
a.children(1).visible='off';//remove the legend block 
xtitle(text); 
endfunction//save the code as root1.sce
