function drawDataRates = drawDataRates(xLimit,yLimit,B,signal,noise,k)

[X,Y] = meshgrid(xLimit(1):100:xLimit(2),yLimit(1):100:yLimit(2));

Z = distance(X,Y,0,0);

N = drawNoise(xLimit,yLimit,signal,noise,k);
R = N;
display(R);
for y = 1:10,
    for x = 1:10,
        if R(y,x) < 0.3
            disp('R(y,x) < 0.3');
            R(y,x) = 0;
        elseif R(y,x) > 63
            disp('R(y,x) > 63');
            R(y,x) = B*log2(1+63);
        else
            disp('else');
            R(y,x) = B*log2(1+R(y,x));
        end
    end
end
    

surf(X,Y,R);

xlabel('X-axis');
ylabel('Y-axis');
zlabel('DataRates');