function [w0,w1,w2,w3,w4,w5,w6]=updatewieght(gameboard,w0,w1,w2,w3,w4,w5,w6)

lengthgame=size(gameboard);

for i=1:lengthgame(1,1)-1
    alfa=0.1;

    w0=w0+alfa.*(gameboard(i+1,10)-gameboard(i,10));
    w1=w1+alfa.*(gameboard(i+1,10)-gameboard(i,10)).*gameboard(i,12);
    w2=w2+alfa.*(gameboard(i+1,10)-gameboard(i,10)).*gameboard(i,15);
    w3=w3+alfa.*(gameboard(i+1,10)-gameboard(i,10)).*gameboard(i,13);
    w4=w4+alfa.*(gameboard(i+1,10)-gameboard(i,10)).*gameboard(i,16);
    w5=w5+alfa.*(gameboard(i+1,10)-gameboard(i,10)).*gameboard(i,14);
    w6=w6+alfa.*(gameboard(i+1,10)-gameboard(i,10)).*gameboard(i,17);

end

return;