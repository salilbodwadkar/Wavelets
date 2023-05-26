function [x, Dx, Dxx] = diffmatper(n, xspan)
    a = xspan(1);
    b = xspan(2);
    h = (b - a) / n;
    x = a + h * (0:n-1); % nodes, omitting the repeated data

    % Construct Dx by diagonals, then correct the corners.
    dp = repmat(0.5/h, 1, n-1); % superdiagonal
    dm = repmat(-0.5/h, 1, n-1); % subdiagonal
    Dx = diag(dm, -1) + diag(dp, 1);
    Dx(1, n) = -1 / (2 * h);
    Dx(n, 1) = 1 / (2 * h);

    % Construct Dxx by diagonals, then correct the corners.
    d0 = repmat(-2 / h^2, 1, n); % main diagonal
    dp = ones(1, n-1) / h^2; % superdiagonal and subdiagonal
    Dxx = diag(dp, -1) + diag(d0, 0) + diag(dp, 1);
    Dxx(1, n) = 1 / h^2;
    Dxx(n, 1) = 1 / h^2;

    return
end