function root = NewtonRaphson(f, df, x0, tol)
    x = x0;
    while abs(f(x)) > tol
        x = x - f(x) / df(x);
    end
    root = x;
end

% Example usage
f = @(x) x^2 - 4;
df = @(x) 2*x;
x0 = 1; tol = 1e-5;
root = NewtonRaphson(f, df, x0, tol);
disp(['Root found at: ', num2str(root)]);
