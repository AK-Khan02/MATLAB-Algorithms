function I = SimpsonsRule(f, a, b, n)
    if mod(n, 2) == 1
        error('n must be even');
    end
    
    h = (b - a) / n;
    x = a:h:b;
    y = f(x);
    I = h / 3 * (y(1) + 4 * sum(y(2:2:end-1)) + 2 * sum(y(3:2:end-2)) + y(end));
end

% Example usage
f = @(x) x^4 - 2*x + 1;
a = 0; b = 1; n = 6;
I = SimpsonsRule(f, a, b, n);
disp(['Integral: ', num2str(I)]);
