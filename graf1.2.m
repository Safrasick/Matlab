figure
[x, y] = meshgrid([-2: 0.2: 2]);
z = x .^ 2 + y .^ 2;
surfc(x, y, z)
colormap('bone')
title('z = x^{2} + y^{2}', 'interpreter', 'tex')
xlabel('x', 'FontWeight', 'bold')
ylabel('y', 'FontWeight', 'bold')
zlabel('z', 'FontWeight', 'bold')
