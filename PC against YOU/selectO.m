function [countx2,countx4,countx6,cellcounto,answer,maxvalueo,boardstate] = selectO(mat,w0,w2,w4,w6)
countx2 = 0;countx4 = 0;countx6 = 0;cellpositiontable = [];summovetable = []; boardfinal = 0;answer = 0;cellcounto = 0;maxvalueo = 0;boardstate = [];
wo = [w0 w2 w4 w6];
if mat{1}+mat{2}+mat{3}+mat{4}+mat{5}+mat{6}+mat{7}+mat{8}+mat{9}  ==  0
    cellcounto = randi(9,1);
    maxvalueo = 0;
    boardstate = [mat{1},mat{2},mat{3},mat{4},mat{5},mat{6},mat{7},mat{8},mat{9},maxvalueo];
else

    for i = 1:9

        if (mat{i} ~=  1 && mat{i} ~=  2)
            mat{i} = 2;

            % Check cell 1
            if i  ==  1
                if mat{1}+mat{4}+mat{7}  ==  2 && (mat{1} ~=  1 && mat{4} ~=  1 && mat{7} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{2}+mat{3}  ==  2 && (mat{1} ~=  1 && mat{2} ~=  1 && mat{3} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{5}+mat{9}  ==  2 && (mat{1} ~=  1 && mat{5} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{4}+mat{7}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{2}+mat{3}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{5}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{4}+mat{7}  ==  6
                    countx6 = countx6+3;
                end
                if mat{1}+mat{2}+mat{3}  ==  6
                    countx6 = countx6+3;
                end
                if mat{1}+mat{5}+mat{9}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 2
            if i  ==  2
                if mat{1}+mat{2}+mat{3}  ==  2 && (mat{1} ~=  1 && mat{2} ~=  1 && mat{3} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{2}+mat{5}+mat{8}  ==  2 && (mat{2} ~=  1 && mat{5} ~=  1 && mat{8} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{2}+mat{3}  ==  4
                    countx4 = countx4+2;
                end
                if mat{2}+mat{5}+mat{8}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{2}+mat{3}  ==  6
                    countx6 = countx6+3;
                end
                if mat{2}+mat{5}+mat{8}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 3
            if i  ==  3
                if mat{1}+mat{2}+mat{3}  ==  2 && (mat{1} ~=  1 && mat{2} ~=  1 && mat{3} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{3}+mat{6}+mat{9}  ==  2 && (mat{3} ~=  1 && mat{6} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{3}+mat{5}+mat{7}  ==  2 && (mat{3} ~=  1 && mat{5} ~=  1 && mat{7} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{2}+mat{3}  ==  4
                    countx4 = countx4+2;
                end
                if mat{3}+mat{6}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{3}+mat{5}+mat{7}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{2}+mat{3}  ==  6
                    countx6 = countx6+3;
                end
                if mat{3}+mat{6}+mat{9}  ==  6
                    countx6 = countx6+3;
                end
                if mat{3}+mat{5}+mat{7}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 4
            if i  ==  4
                if mat{1}+mat{4}+mat{7}  ==  2 && (mat{1} ~=  1 && mat{4} ~=  1 && mat{7} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{4}+mat{5}+mat{6}  ==  2 && (mat{4} ~=  1 && mat{5} ~=  1 && mat{6} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{4}+mat{7}  ==  4
                    countx4 = countx4+2;
                end
                if mat{4}+mat{5}+mat{6}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{4}+mat{7}  ==  6
                    countx6 = countx6+3;
                end
                if mat{4}+mat{5}+mat{6}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 5
            if i  ==  5
                if mat{2}+mat{5}+mat{8}  ==  2 && (mat{2} ~=  1 && mat{5} ~=  1 && mat{8} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{4}+mat{5}+mat{6}  ==  2 && (mat{4} ~=  1 && mat{5} ~=  1 && mat{6} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{5}+mat{9}  ==  2 && (mat{1} ~=  1 && mat{5} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{3}+mat{5}+mat{7}  ==  2 && (mat{3} ~=  1 && mat{5} ~=  1 && mat{7} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{2}+mat{5}+mat{8}  ==  4
                    countx4 = countx4+2;
                end
                if mat{4}+mat{5}+mat{6}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{5}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{3}+mat{5}+mat{7}  ==  4
                    countx4 = countx4+2;
                end
                if mat{2}+mat{5}+mat{8}  ==  6
                    countx6 = countx6+3;
                end
                if mat{4}+mat{5}+mat{6}  ==  6
                    countx6 = countx6+3;
                end
                if mat{1}+mat{5}+mat{9}  ==  6
                    countx6 = countx6+3;
                end
                if mat{3}+mat{5}+mat{7}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end

            % Check cell 6
            if i  ==  6
                if mat{4}+mat{5}+mat{6}  ==  2 && (mat{4} ~=  1 && mat{5} ~=  1 && mat{6} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{3}+mat{6}+mat{9}  ==  2 && (mat{3} ~=  1 && mat{6} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{4}+mat{5}+mat{6}  ==  4
                    countx4 = countx4+2;
                end
                if mat{3}+mat{6}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{4}+mat{5}+mat{6}  ==  6
                    countx6 = countx6+3;
                end
                if mat{3}+mat{6}+mat{9}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end

            % Check cell 7
            if i  ==  7
                if mat{1}+mat{4}+mat{7}  ==  2 && (mat{1} ~=  1 && mat{4} ~=  1 && mat{7} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{7}+mat{8}+mat{9}  ==  2 && (mat{7} ~=  1 && mat{8} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{3}+mat{5}+mat{7}  ==  2 && (mat{3} ~=  1 && mat{5} ~=  1 && mat{7} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{4}+mat{7}  ==  4
                    countx4 = countx4+2;
                end
                if mat{7}+mat{8}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{3}+mat{5}+mat{7}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{4}+mat{7}  ==  6
                    countx6 = countx6+3;
                end
                if mat{7}+mat{8}+mat{9}  ==  6
                    countx6 = countx6+3;
                end
                if mat{3}+mat{5}+mat{7}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 8
            if i  ==  8
                if mat{2}+mat{5}+mat{8}  ==  2 && (mat{2} ~=  1 && mat{5} ~=  1 && mat{8} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{7}+mat{8}+mat{9}  ==  2 && (mat{7} ~=  1 && mat{8} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{2}+mat{5}+mat{8}  ==  4
                    countx4 = countx4+2;
                end
                if mat{7}+mat{8}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{2}+mat{5}+mat{8}  ==  6
                    countx6 = countx6+3;
                end
                if mat{7}+mat{8}+mat{9}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end
            % Check cell 9
            if i  ==  9
                if mat{1}+mat{5}+mat{9}  ==  2 && (mat{1} ~=  1 && mat{5} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{3}+mat{6}+mat{9}  ==  2 && (mat{3} ~=  1 && mat{6} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{7}+mat{8}+mat{9}  ==  2 && (mat{7} ~=  1 && mat{8} ~=  1 && mat{9} ~=  1)
                    countx2 = countx2+1;
                end
                if mat{1}+mat{5}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{3}+mat{6}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{7}+mat{8}+mat{9}  ==  4
                    countx4 = countx4+2;
                end
                if mat{1}+mat{5}+mat{9}  ==  6
                    countx6 = countx6+3;
                end
                if mat{3}+mat{6}+mat{9}  ==  6
                    countx6 = countx6+3;
                end
                if mat{7}+mat{8}+mat{9}  ==  6
                    countx6 = countx6+3;
                end

                counti1 = [1 countx2 countx4 countx6];
                valuei1 = wo.*counti1;
                summove = sum(valuei1);
            end
            mat{i} = 0;
            countx2 = 0;
            countx4 = 0;
            countx6 = 0;
            cellpositiontable(end+1,:) = i;
            summovetable(end+1,:) =  summove;

        end
    end

    boardfinal  =  [cellpositiontable,summovetable];
    maxvalueo  =  max(boardfinal(:,2));
    D  =  find(boardfinal(:,2)  ==  maxvalueo);
    H  =  boardfinal(D(:,1));
    answer  =  H(randi(numel(H)));
    boardstate  =  [mat{1},mat{2},mat{3},mat{4},mat{5},mat{6},mat{7},mat{8},mat{9},maxvalueo];
end

return;