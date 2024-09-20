
function [gamevalue, stop, draw] = result(mat)
gamevalue = 0;
stop = 0;
draw = 0;

% Check if Player X (1) wins
if (mat{1} * mat{2} * mat{3} == 1 || mat{4} * mat{5} * mat{6} == 1 || mat{7} * mat{8} * mat{9} == 1 || ...
        mat{1} * mat{4} * mat{7} == 1 || mat{2} * mat{5} * mat{8} == 1 || mat{3} * mat{6} * mat{9} == 1 || ...
        mat{1} * mat{5} * mat{9} == 1 || mat{3} * mat{5} * mat{7} == 1)

    gamevalue = 100;
    stop = 1;
    return;

    % Check if Player O (2) wins
elseif (mat{1} * mat{2} * mat{3} == 8 || mat{4} * mat{5} * mat{6} == 8 || mat{7} * mat{8} * mat{9} == 8 || ...
        mat{1} * mat{4} * mat{7} == 8 || mat{2} * mat{5} * mat{8} == 8 || mat{3} * mat{6} * mat{9} == 8 || ...
        mat{1} * mat{5} * mat{9} == 8 || mat{3} * mat{5} * mat{7} == 8)

    gamevalue = -100;
    stop = 1;
    return;
end

% Check if it's a draw
if ((mat{1} * mat{2} * mat{3} ~= 1) && (mat{4} * mat{5} * mat{6} ~= 1) && (mat{7} * mat{8} * mat{9} ~= 1) && ...
        (mat{1} * mat{4} * mat{7} ~= 1) && (mat{2} * mat{5} * mat{8} ~= 1) && (mat{3} * mat{6} * mat{9} ~= 1) && ...
        (mat{1} * mat{5} * mat{9} ~= 1) && (mat{3} * mat{5} * mat{7} ~= 1)) && ...
        ((mat{1} * mat{2} * mat{3} ~= 8) && (mat{4} * mat{5} * mat{6} ~= 8) && (mat{7} * mat{8} * mat{9} ~= 8) && ...
        (mat{1} * mat{4} * mat{7} ~= 8) && (mat{2} * mat{5} * mat{8} ~= 8) && (mat{3} * mat{6} * mat{9} ~= 8) && ...
        (mat{1} * mat{5} * mat{9} ~= 8) && (mat{3} * mat{5} * mat{7} ~= 8)) && ...
        ((mat{1} * mat{2} * mat{3} ~= 0) && (mat{4} * mat{5} * mat{6} ~= 0) && (mat{7} * mat{8} * mat{9} ~= 0) && ...
        (mat{1} * mat{4} * mat{7} ~= 0) && (mat{2} * mat{5} * mat{8} ~= 0) && (mat{3} * mat{6} * mat{9} ~= 0) && ...
        (mat{1} * mat{5} * mat{9} ~= 0) && (mat{3} * mat{5} * mat{7} ~= 0))

    draw = 1;
    gamevalue = 0;
    return;
end
end
