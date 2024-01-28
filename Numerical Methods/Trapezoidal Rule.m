function I = TrapezoidalRule(f, a, b, n)
    h = (b - a) / n;
    x = a:h:b;
    y = f(x);
    I = h * (sum(y) - (y(1) + y(end)) / 2);
end

% Example usage
f = @(x) x^3 - x^2 + 2;
a = 1; b = 2; n = 6;
I = TrapezoidalRule(f, a, b, n);
disp(['Integral: ', num2str(I)]);
