function root = BisectionMethod(f, a, b, tol)
    if f(a) * f(b) >= 0
        error('f(a) and f(b) do not have opposite signs');
    end

    while (b - a) / 2 > tol
        c = (a + b) / 2;
        if f(c) == 0
            break;
        elseif f(c) * f(a) < 0
            b = c;
        else
            a = c;
        end
    end
    root = (a + b) / 2;
end

% Example usage
f = @(x) x^3 - x - 2;
a = 1; b = 2; tol = 1e-5;
root = BisectionMethod(f, a, b, tol);
disp(['Root found at: ', num2str(root)]);
