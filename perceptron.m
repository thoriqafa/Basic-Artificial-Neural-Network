%method perceptron
function p = perceptron(x1x2b, target, lr, th)
%inisialisasi weight dan bias itu 0
w1w2b = zeros(1,size(x1x2b,2));
weight_changes = ones(size(x1x2b));
while not(isequal(weight_changes,zeros(4,3))&&)
        for i = 1:size(target,2)
            y_in = sum(times(x1x2b(i,:),w1w2b));
            if y_in > th
                y = 1;
            else if y_in < -th
                    y = -1;
                else 
                    y = 0;
                end
            end
            cond = w1w2b;
            if y ~= target(i)
                w1w2b = w1w2b + lr*target(i)*x1x2b(i,:);
            end
            weight_changes(i,:) = w1w2b - cond;
            urutan = [x1x2b(i,:) y_in target(i) weight_changes(i,:) w1w2b];
            disp(urutan)
            pause(0.1)
        end

    %inisialisasi untuk garis linear
    a = w1w2b(1)/w1w2b(2);
    b = w1w2b(3)/w1w2b(2);
    x = [-5 : 1 : 5];
    y = -(x*a)-(b);
  
    %membuat plot
    p1 = plot(x,y,'r');
    xl = xline(0);
    yl = yline(0);
    xl.LineWidth = 1;
    yl.LineWidth = 1;
    xlim([-5 5]);
    ylim([-5 5]);
    %grid on, axis equal
end
    p = w1w2b;
    %menampilkan hasil w1 w2 b yang baru
    disp("    w1     w2    b")
end
