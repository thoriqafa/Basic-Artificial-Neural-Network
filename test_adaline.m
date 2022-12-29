function test = test_adaline(x1x2b,w1w2b)
y = zeros(1,size(x1x2b,1));
for i=1:size(x1x2b,1)
    y_in = sum(times(x1x2b(i,:),w1w2b));
    if y_in >= 0
        y(i) = 1;
    else
        y(i) = -1;
    end
end
test = y;
end