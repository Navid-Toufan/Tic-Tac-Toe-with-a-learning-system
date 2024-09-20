function [x] = showt(mat)

x = 0;
if mat{1} == 1
    x=plot(0.5,2.5,'rx','MarkerSize', 30);
end

if  mat{2} == 1
    x = plot(0.5,1.5,'rx','MarkerSize', 30);
end

if   mat{3} == 1
    x = plot(0.5,0.5,'rx','MarkerSize', 30);
end

if   mat{4} == 1
    x=plot(1.5,2.5,'rx','MarkerSize', 30);
end

if   mat{5} == 1
    x = plot(1.5,1.5,'rx','MarkerSize', 30);
end

if   mat{6} == 1
    x = plot(1.5,0.5,'rx','MarkerSize', 30);
end

if   mat{7} == 1
    x = plot(2.5,2.5,'rx','MarkerSize', 30);
end

if   mat{8} == 1
    x = plot(2.5,1.5,'rx','MarkerSize', 30);
end

if  mat{9} == 1
    x = plot(2.5,0.5,'rx','MarkerSize', 30);
end

if mat{1} == 2
    x = plot(0.5,2.5,'bo','MarkerSize', 30);
end

if mat{2} == 2
    x = plot(0.5,1.5,'bo','MarkerSize', 30);
end

if   mat{3} == 2
    x = plot(0.5,0.5,'bo','MarkerSize', 30);
end

if   mat{4} == 2
    x = plot(1.5,2.5,'bo','MarkerSize', 30);
end

if   mat{5} == 2
    x = plot(1.5,1.5,'bo','MarkerSize', 30);
end

if   mat{6} == 2
    x = plot(1.5,0.5,'bo','MarkerSize', 30);
end

if   mat{7} == 2
    x = plot(2.5,2.5,'bo','MarkerSize', 30);
end

if   mat{8} == 2
    x = plot(2.5,1.5,'bo','MarkerSize', 30);
end

if  mat{9} == 2
    x = plot(2.5,0.5,'bo','MarkerSize', 30);
end
return;