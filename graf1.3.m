figure
[x, y] = meshgrid([-4: 0.2: 4]);
z = ((x .^ 2) ./ 20) + (y .^2 ./ 10);
surf(x, y, z)
colormap("gray")
xlabel('x', 'FontWeight', 'bold')
ylabel('y', 'FontWeight', 'bold')
zlabel('z', 'FontWeight', 'bold')
