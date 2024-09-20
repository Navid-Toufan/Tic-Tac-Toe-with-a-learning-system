function [countx1,countx3,countx5,cellcountx,answer,maxvaluex,boardstate] = selectX(mat,w0,w1,w3,w5)
countx1 = 0;countx3 = 0;countx5 = 0;cellpositiontable = [];summovetable = []; boardfinal = 0;answer = 0;maxvaluex = 0;cellcountx = 0; boardstate = [];
wx = [w0 w1 w3 w5];

if mat{1}+mat{2}+mat{3}+mat{4}+mat{5}+mat{6}+mat{7}+mat{8}+mat{9} ==  0
    cellcountx = randi(9,1);
    maxvaluex = 0;
    boardstate = [mat{1},mat{2},mat{3},mat{4},mat{5},mat{6},mat{7},mat{8},mat{9},maxvaluex];
else

    for i = 1:9

        if (mat{i} ~= 1 && mat{i} ~= 2)
            mat{i} = 1;
            
            % Check cell 1
            if i ==  1
                if mat{1}+mat{4}+mat{7} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{2}+mat{3} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{5}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{4}+mat{7} ==  2 && (mat{1} ~= 2 && mat{4} ~= 2 && mat{7} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{2}+mat{3} ==  2 && (mat{1} ~= 2 && mat{2} ~= 2 && mat{3} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{5}+mat{9} ==  2 && (mat{1} ~= 2 && mat{5} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{4}+mat{7} ==  3 && (mat{1} ~= 2 && mat{4} ~= 2 && mat{7} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{1}+mat{2}+mat{3} ==  3 && (mat{1} ~= 2 && mat{2} ~= 2 && mat{3} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{1}+mat{5}+mat{9} ==  3 && (mat{1} ~= 2 && mat{5} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 2
            if i ==  2
                if mat{1}+mat{2}+mat{3} ==  1
                    countx1 = countx1+1;
                end
                if mat{2}+mat{5}+mat{8} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{2}+mat{3} ==  2 && (mat{1} ~= 2 && mat{2} ~= 2 && mat{3} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{2}+mat{5}+mat{8} ==  2 && (mat{2} ~= 2 && mat{5} ~= 2 && mat{8} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{2}+mat{3} ==  3 && (mat{1} ~= 2 && mat{2} ~= 2 && mat{3} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{2}+mat{5}+mat{8} ==  3 && (mat{2} ~= 2 && mat{5} ~= 2 && mat{8} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 3
            if i ==  3
                if mat{1}+mat{2}+mat{3} ==  1
                    countx1 = countx1+1;
                end
                if mat{3}+mat{6}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{3}+mat{5}+mat{7} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{2}+mat{3} ==  2 && (mat{1} ~= 2 && mat{2} ~= 2 && mat{3} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{3}+mat{6}+mat{9} ==  2 && (mat{3} ~= 2 && mat{6} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{3}+mat{5}+mat{7} ==  2 && (mat{3} ~= 2 && mat{5} ~= 2 && mat{7} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{2}+mat{3} ==  3 && (mat{1} ~= 2 && mat{2} ~= 2 && mat{3} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{3}+mat{6}+mat{9} ==  3 && (mat{3} ~= 2 && mat{6} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{3}+mat{5}+mat{7} ==  3 && (mat{3} ~= 2 && mat{5} ~= 2 && mat{7} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 4
            if i ==  4
                if mat{1}+mat{4}+mat{7} ==  1
                    countx1 = countx1+1;
                end
                if mat{4}+mat{5}+mat{6} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{4}+mat{7} ==  2 && (mat{1} ~= 2 && mat{4} ~= 2 && mat{7} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{4}+mat{5}+mat{6} ==  2 && (mat{4} ~= 2 && mat{5} ~= 2 && mat{6} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{4}+mat{7} ==  3 && (mat{1} ~= 2 && mat{4} ~= 2 && mat{7} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{4}+mat{5}+mat{6} ==  3 && (mat{4} ~= 2 && mat{5} ~= 2 && mat{6} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 5
            if i ==  5
                if mat{2}+mat{5}+mat{8} ==  1
                    countx1 = countx1+1;
                end
                if mat{4}+mat{5}+mat{6} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{5}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{3}+mat{5}+mat{7} ==  1
                    countx1 = countx1+1;
                end
                if mat{2}+mat{5}+mat{8} ==  2 && (mat{2} ~= 2 && mat{5} ~= 2 && mat{8} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{4}+mat{5}+mat{6} ==  2 && (mat{4} ~= 2 && mat{5} ~= 2 && mat{6} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{5}+mat{9} ==  2 && (mat{1} ~= 2 && mat{5} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{3}+mat{5}+mat{7} ==  2 && (mat{3} ~= 2 && mat{5} ~= 2 && mat{7} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{2}+mat{5}+mat{8} ==  3 && (mat{2} ~= 2 && mat{5} ~= 2 && mat{8} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{4}+mat{5}+mat{6} ==  3 && (mat{4} ~= 2 && mat{5} ~= 2 && mat{6} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{1}+mat{5}+mat{9} ==  3 && (mat{1} ~= 2 && mat{5} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{3}+mat{5}+mat{7} ==  3 && (mat{3} ~= 2 && mat{5} ~= 2 && mat{7} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 6
            if i ==  6
                if mat{4}+mat{5}+mat{6} ==  1
                    countx1 = countx1+1;
                end
                if mat{3}+mat{6}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{4}+mat{5}+mat{6} ==  2 && (mat{4} ~= 2 && mat{5} ~= 2 && mat{6} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{3}+mat{6}+mat{9} ==  2 && (mat{3} ~= 2 && mat{6} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{4}+mat{5}+mat{6} ==  3 && (mat{4} ~= 2 && mat{5} ~= 2 && mat{6} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{3}+mat{6}+mat{9} ==  3 && (mat{3} ~= 2 && mat{6} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end

            % Check cell 7
            if i ==  7
                if mat{1}+mat{4}+mat{7} ==  1
                    countx1 = countx1+1;
                end
                if mat{7}+mat{8}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{3}+mat{5}+mat{7} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{4}+mat{7} ==  2 && (mat{1} ~= 2 && mat{4} ~= 2 && mat{7} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{7}+mat{8}+mat{9} ==  2 && (mat{7} ~= 2 && mat{8} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{3}+mat{5}+mat{7} ==  2 && (mat{3} ~= 2 && mat{5} ~= 2 && mat{7} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{4}+mat{7} ==  3 && (mat{1} ~= 2 && mat{4} ~= 2 && mat{7} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{7}+mat{8}+mat{9} ==  3 && (mat{7} ~= 2 && mat{8} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{3}+mat{5}+mat{7} ==  3 && (mat{3} ~= 2 && mat{5} ~= 2 && mat{7} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 8
            if i ==  8
                if mat{2}+mat{5}+mat{8} ==  1
                    countx1 = countx1+1;
                end
                if mat{7}+mat{8}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{2}+mat{5}+mat{8} ==  2 && (mat{2} ~= 2 && mat{5} ~= 2 && mat{8} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{7}+mat{8}+mat{9} ==  2 && (mat{7} ~= 2 && mat{8} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{2}+mat{5}+mat{8} ==  3 && (mat{2} ~= 2 && mat{5} ~= 2 && mat{8} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{7}+mat{8}+mat{9} ==  3 && (mat{7} ~= 2 && mat{8} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 9
            if i ==  9
                if mat{1}+mat{5}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{3}+mat{6}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{7}+mat{8}+mat{9} ==  1
                    countx1 = countx1+1;
                end
                if mat{1}+mat{5}+mat{9} ==  2 && (mat{1} ~= 2 && mat{5} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{3}+mat{6}+mat{9} ==  2 && (mat{3} ~= 2 && mat{6} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{7}+mat{8}+mat{9} ==  2 && (mat{7} ~= 2 && mat{8} ~= 2 && mat{9} ~= 2)
                    countx3 = countx3+2;
                end
                if mat{1}+mat{5}+mat{9} ==  3 && (mat{1} ~= 2 && mat{5} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{3}+mat{6}+mat{9} ==  3 && (mat{3} ~= 2 && mat{6} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end
                if mat{7}+mat{8}+mat{9} ==  3 && (mat{7} ~= 2 && mat{8} ~= 2 && mat{9} ~= 2)
                    countx5 = countx5+3;
                end

                counti1 = [1 countx1 countx3 countx5];
                valuei1 = wx.*counti1;
                summove = sum(valuei1);
            end
            
            mat{i} = 0;
            countx1 = 0;
            countx3 = 0;
            countx5 = 0;
            cellpositiontable(end+1,:) = i;
            summovetable(end+1,:) =  summove;

        end
    end

    boardfinal  =  [cellpositiontable,summovetable];
    maxvaluex  =  max(boardfinal(:,2));
    D  =  find(boardfinal(:,2) ==  maxvaluex);
    H  =  boardfinal(D(:,1));
    answer  =  H(randi(numel(H)));
    boardstate = [mat{1},mat{2},mat{3},mat{4},mat{5},mat{6},mat{7},mat{8},mat{9},maxvaluex];
end

return;