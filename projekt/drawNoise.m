function drawNoise = drawNoise(xLimit,yLimit,signal,noise,k)

[X,Y] = meshgrid(xLimit(1):100:xLimit(2),yLimit(1):100:yLimit(2));

Z = distance(X,Y,0,0);

drawNoise = signal./((1+Z)^k*noise^2);

for y = 1:10,
    for x = 1:10,
        if drawNoise(y, x) > 4*10^7
            drawNoise(y, x) = 2*10^7;
        end
    end
end

surf(X,Y,drawNoise);

xlabel('X-axis');
ylabel('Y-axis');
zlabel('Signal/Noise');