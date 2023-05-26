function Y = mat_downsample(X)
    % Downsample the input matrix by 2 along each dimension
    Y = X(1:2:end, 1:2:end);
end