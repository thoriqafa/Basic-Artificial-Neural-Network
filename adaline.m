function a = adaline(x1x2b,target,lr,t)
w1w2b = zeros(1,size(x1x2b,2));
weight_changes = ones(size(x1x2b,2));
while max(weight_changes(1:2)) > t
    for i=1:size(target,2)
        y_in = sum(times(x1x2b(i,:),w1w2b));
        weight_changes = lr*(target(i)-y_in)*x1x2b(i,:);
        w1w2b = w1w2b + weight_changes;
        urutan=[x1x2b(i,:) w1w2b];
        disp(urutan);
        %max_epoch=max_epoch+1;
        pause(0.1)
    end

    if not(isequal(target,test_adaline(x1x2b,w1w2b)))
    w1w2b = zeros(1,size(x1x2b,2));
    end
    w1 = w1w2b(1);
    w2 = w1w2b(2);
    b = w1w2b(3);
 
    %inisialisasi untuk garis linear
    a = w1w2b(1)/w1w2b(2);
    b = w1w2b(3)/w1w2b(2);
    x = [-5 : 1 : 5];
    y = -(x*a)-(b);
  
    %membuat garis
    p1 = plot(x,y,'r');
    xl = xline(0);
    yl = yline(0);
    xl.LineWidth = 1;
    yl.LineWidth = 1;
    xlim([-5 5]);
    ylim([-5 5]);
    %grid on, axis equal
    
  
end
    a = w1w2b;
    %menampilkan w1 w2 b yang baru
    disp("    w1    w2     b")
end

   


   