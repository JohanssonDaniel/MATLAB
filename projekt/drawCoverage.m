function drawCoverage = drawCoverage(xmin,xmax,ymin,ymax)

[X,Y] = meshgrid(xmin:100:xmax,ymin:100:ymax);

Z = distance(X,Y,0,0);
surf(X,Y,Z);

xlabel('X-axis');
ylabel('Y-axis');
zlabel('Distance');

