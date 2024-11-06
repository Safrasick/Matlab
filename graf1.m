figure
[x, y] = meshgrid([-2: 0.2: 2])
z = 2 * x .* sin(x) + 3 * y .* cos(y)
surf(x, y, z)
colormap(flipud(colormap("gray")))

