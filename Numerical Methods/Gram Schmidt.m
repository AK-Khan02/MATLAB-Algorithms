function Q = GramSchmidt(A)
    [m, n] = size(A);
    Q = zeros(m, n);
    for i = 1:n
        Q(:, i) = A(:, i);
        for j = 1:i-1
            Q(:, i) = Q(:, i) - (Q(:, j)' * A(:, i)) / (Q(:, j)' * Q(:, j)) * Q(:, j);
        end
        Q(:, i) = Q(:, i) / norm(Q(:, i));
    end
end

% Example usage
A = [1, 2; 3, 4];
Q = GramSchmidt(A);
disp('Q Matrix:');
disp(Q);
