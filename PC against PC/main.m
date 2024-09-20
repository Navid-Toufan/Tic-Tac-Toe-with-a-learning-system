clear all;
clc;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tic-Tac-Toe Training Game with Weight Updates and Random Player Selection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the game figure
%openfig('pic-tik-tak-toe.fig')

% Initialize the game board as a 3x3 cell array
mat = cell(3, 3);
mat(:) = {0}; % Set all cells to zero initially

% Set initial values for the board and game variables
game = 0;
maxvaluex = 0;
maxvalueo = 0;
finalboard = [];
drawsum = 0;
winsum = 0;
losesum = 0;
gameboard = [];
finalallboard = [];

% Input: Number of games to play
x = inputdlg('Please set the number of matches', 'Training game', [1 50]);
numberofgame = str2double(x{:});

% Initialize player scores
Xplayer = 0;
Oplayer = 0;

% Main game loop for multiple games
for game = 1:numberofgame

    % Initialize weights for the first game
    if game == 1
        w0 = 0.1;
        w1 = 1; w2 = 1; w3 = 1; w4 = 1; w5 = 1; w6 = 1;
    else
        % Update weights based on the last game
        [w0, w1, w2, w3, w4, w5, w6] = updateweight(gameboard, w0, w1, w2, w3, w4, w5, w6);
    end

    % Randomly select a starting player
    s = randi([1, 2], 1, 1);
    if s == 1
        sp = 1;
        np = 2;
    elseif s == 2
        np = 1;
        sp = 2;
    end

    % Total number of turns is 9 (maximum for Tic-Tac-Toe)
    for Turn = [sp,np,sp,np,sp,np,sp,np,sp]


        if Turn == 1
            % Odd turn: X player's turn (Player 1)
            [countnumbx, cellcountx, answer, maxvaluex] = selectX(mat, w0, w1, w3, w5);

            % Place X and update board
            if answer == 0
                mat(cellcountx) = {1};
            else
                mat(answer) = {1};
            end

            % Save board state for Player X
            boardstate = [mat{:}, maxvaluex, 1, countnumbx(1, 2), countnumbx(1, 3), countnumbx(1, 4), 0, 0, 0];

            % Check game result
            [gamevalue, stop, draw] = result(mat);
            if stop == 1
                % X is the winner
                boardstate = [mat{:}, gamevalue, 1, countnumbx(1, 2), countnumbx(1, 3), countnumbx(1, 4), 0, 0, 0];
                finalboard(end + 1, :) = boardstate;
                winsum = winsum + 1;
                break;
            elseif draw == 1
                % It's a draw
                boardstate = [mat{:}, gamevalue, 0, countnumbx(1, 2), countnumbx(1, 3), countnumbx(1, 4), 0, 0, 0];
                finalboard(end + 1, :) = boardstate;
                drawsum = drawsum + 1;
                break;
            end
        else
            % Even turn: O player's turn (Player 2)
            [countnumbo, cellcounto, answer, maxvalueo] = selectO(mat, w0, w2, w4, w6);

            % Place O and update board
            if answer == 0
                mat(cellcounto) = {2};
            else
                mat(answer) = {2};
            end

            % Save board state for Player O
            boardstate = [mat{:}, maxvalueo, 2, 0, 0, 0, countnumbo(1, 2), countnumbo(1, 3), countnumbo(1, 4)];

            % Check game result
            [gamevalue, stop, draw] = result(mat);
            if stop == 1
                % O is the winner
                boardstate = [mat{:}, gamevalue, 2, 0, 0, 0, countnumbo(1, 2), countnumbo(1, 3), countnumbo(1, 4)];
                finalboard(end + 1, :) = boardstate;
                losesum = losesum + 1;
                break;
            elseif draw == 1
                % It's a draw
                boardstate = [mat{:}, gamevalue, 0, 0, 0, 0, countnumbo(1, 2), countnumbo(1, 3), countnumbo(1, 4)];
                finalboard(end + 1, :) = boardstate;
                drawsum = drawsum + 1;
                break;
            end
        end

        % Store the board state after each move
        finalboard(end + 1, :) = boardstate;

    end

    % Reset board for next game
    mat(:) = {0};
    boardstate = 0;
    gameboard = finalboard;
    finalboard = [];
end

%%%%%%%%%%%%%%% Results Summary %%%%%%%%%%%%%%%%%
drawresult = (drawsum / numberofgame) * 100;
winresult = (winsum / numberofgame) * 100;
loseresult = (losesum / numberofgame) * 100;

% Display the results
numberofgame;
fprintf('Nnumber of training games played: %0.0f\n', numberofgame);
fprintf('Draw Percentage: %.2f%%\n', drawresult);
fprintf('Win Percentage : %.2f%%\n', winresult);
fprintf('Loss Percentage : %.2f%%\n', loseresult);
