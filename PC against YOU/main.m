clc;
clear all;
close all;
openfig('pic-tik-tak-to.fig');
n = 3;
k = 3;
mat = cell(n, k);
mat(:) = {0};
axis([0, 3, 0, 3]);
wx = [.5 .5 .5];
wo = [.5 .5 .5];
s = randi([1,2],1,1);
if s == 1
    sp = 1;
    np = 2;
elseif s == 2
    np = 1;
    sp = 2;
end
w0 = 1; w1 = 1; w2 = 1; w3 = 1; w4 = 1; w5 = 1; w6 = 1;
for Turn = [sp,np,sp,np,sp,np,sp,np,sp]

    if Turn == 1

        [countx1,countx3,countx5,cellcountx,answer,maxvaluex,boardstate] = selectX(mat,w0,w1,w3,w5);
        if answer == 0
            mat(cellcountx) = {1};
            [x] = showt(mat);
            axis([0,3,0,3]);
        else
            mat(answer) = {1};
            [x] = showt(mat);
        end
    else
    
        [x,y] = ginput(1);
        if   ( y>0 && y<1 ) && ( x>0 && x<1 )
            if mat{3,1} == 2 || mat{3,1} == 1
                disp('this cell is already filled')

                while ( y>0 && y<1 ) && ( x>0 && x<1 )
                    [x,y] = ginput(1);
                end
            else
                mat{3,1} = 2;
                plot(0.5,0.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
        if ( y>0 && y<1 ) && ( x>1 && x<2 )
            if mat{3,2} == 2 || mat{3,2} == 1
                disp('this cell is already filled')
                while ( y>0 && y<1 ) && ( x>1 && x<2 )
                    [x,y] = ginput(1);
                end
            else
                mat{3,2} = 2;
                plot(1.5,0.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
        if   ( y>0 && y<1 ) && ( x>2 && x<3 )
            if mat{3,3} == 2 || mat{3,3} == 1
                disp('this cell is already filled')
                while  ( y>0 && y<1 ) && ( x>2 && x<3 )
                    [x,y] = ginput(1);
                end
            else
                mat{3,3} = 2;
                plot(2.5,0.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
        if   ( y>1 && y<2 ) && ( x>0 && x<1 )
            if mat{2,1} == 2 || mat{2,1} == 1
                disp('this cell is already filled')
                while   ( y>1 && y<2 ) && ( x>0 && x<1 )
                    [x,y] = ginput(1);
                end
            else
                mat{2,1} = 2;
                plot(0.5,1.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
        if   ( y>1 && y<2 ) && ( x>1 && x<2 )
            if mat{2,2} == 2 || mat{2,2} == 1
                disp('this cell is already filled')
                while   ( y>1 && y<2 ) && ( x>1 && x<2 )
                    [x,y] = ginput(1);
                end
            else
                mat{2,2} = 2;
                plot(1.5,1.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
        if   ( y>1 && y<2 ) && ( x>2 && x<3 )
            if mat{2,3} == 2 || mat{2,3} == 1
                disp('this cell is already filled')
                while   ( y>1 && y<2 ) && ( x>2 && x<3 )
                    [x,y] = ginput(1);
                end
            else
                mat{2,3} = 2;
                plot(2.5,1.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
        if   ( y>2 && y<3) && ( x>0 && x<1 )
            if mat{1,1} == 2 || mat{1,1} == 1
                disp('this cell is already filled')
                while   ( y>2 && y<3 ) && ( x>0 && x<1 )
                    [x,y] = ginput(1);
                end
            else
                mat{1,1} = 2;
                plot(0.5,2.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
        if   ( y>2 && y<3 ) && ( x>1 && x<2 )
            if mat{1,2} == 2 || mat{1,2} == 1
                disp('this cell is already filled')
                while   ( y>2 && y<3 ) && ( x>1 && x<2 )
                    [x,y] = ginput(1);
                end
            else
                mat{1,2} = 2;
                plot(1.5,2.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
        if   ( y>2 && y<3 ) && ( x>2 && x<3 )
            if mat{1,3} == 2 || mat{1,3} == 1
                disp('this cell is already filled')
                while   ( y>2 && y<3 ) && ( x>2 && x<3 )
                    [x,y] = ginput(1);
                end
            else
                mat{1,3} = 2;
                plot(2.5,2.5,'bo','MarkerSize', 30);
                axis([0,3,0,3]);
            end
        end
    end

    hold all;

    % Check for 'X' winner
    if ((mat{1}*mat{2}*mat{3} == 1) || (mat{4}*mat{5}*mat{6} == 1) || ...
            (mat{7}*mat{8}*mat{9} == 1) || (mat{1}*mat{4}*mat{7} == 1) || ...
            (mat{2}*mat{5}*mat{8} == 1) || (mat{3}*mat{6}*mat{9} == 1) || ...
            (mat{1}*mat{5}*mat{9} == 1) || (mat{3}*mat{5}*mat{7} == 1))

        disp('Player X is winner');
        gamevalue = 100;
        stop = 1;
        break;

        % Check for 'O' winner
    elseif ((mat{1}*mat{2}*mat{3} == 8) || (mat{4}*mat{5}*mat{6} == 8) || ...
            (mat{7}*mat{8}*mat{9} == 8) || (mat{1}*mat{4}*mat{7} == 8) || ...
            (mat{2}*mat{5}*mat{8} == 8) || (mat{3}*mat{6}*mat{9} == 8) || ...
            (mat{1}*mat{5}*mat{9} == 8) || (mat{3}*mat{5}*mat{7} == 8))

        disp('Player O is winner');
        gamevalue = -100;
        stop = 1;
        break;

        % Check for draw
    elseif (((mat{1}*mat{2}*mat{3}) ~= 1) && ((mat{4}*mat{5}*mat{6}) ~= 1) && ...
            ((mat{7}*mat{8}*mat{9}) ~= 1) && ((mat{1}*mat{4}*mat{7}) ~= 1) && ...
            ((mat{2}*mat{5}*mat{8}) ~= 1) && ((mat{3}*mat{6}*mat{9}) ~= 1) && ...
            ((mat{1}*mat{5}*mat{9}) ~= 1) && ((mat{3}*mat{5}*mat{7}) ~= 1)) && ...
            (((mat{1}*mat{2}*mat{3}) ~= 8) && ((mat{4}*mat{5}*mat{6}) ~= 8) && ...
            ((mat{7}*mat{8}*mat{9}) ~= 8) && ((mat{1}*mat{4}*mat{7}) ~= 8) && ...
            ((mat{2}*mat{5}*mat{8}) ~= 8) && ((mat{3}*mat{6}*mat{9}) ~= 8) && ...
            ((mat{1}*mat{5}*mat{9}) ~= 8) && ((mat{3}*mat{5}*mat{7}) ~= 8)) && ...
            (((mat{1}*mat{2}*mat{3}) ~= 0) && ((mat{4}*mat{5}*mat{6}) ~= 0) && ...
            ((mat{7}*mat{8}*mat{9}) ~= 0) && ((mat{1}*mat{4}*mat{7}) ~= 0) && ...
            ((mat{2}*mat{5}*mat{8}) ~= 0) && ((mat{3}*mat{6}*mat{9}) ~= 0) && ...
            ((mat{1}*mat{5}*mat{9}) ~= 0) && ((mat{3}*mat{5}*mat{7}) ~= 0))

        disp('It is a draw');
    end

end
