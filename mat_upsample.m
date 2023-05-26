function Y = mat_upsample(X)
    % Upsample the input matrix by 2 along each dimension
    [m, n] = size(X);
    Y = zeros(2*m, 2*n);
    Y(1:2:end, 1:2:end) = X;
end