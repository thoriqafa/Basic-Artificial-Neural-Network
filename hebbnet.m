function h = hebbnet(x1x2b,target);
w1w2b = zeros(1,size(x1x2b,2));
for i=1:size(target,2)
    w1w2b = w1w2b + x1x2b(i,:)*target(i);
    cond = w1w2b;
    weight_changes(i,:) = w1w2b - cond;
    urutan = [x1x2b(i,:) target(i) weight_changes(i,:) w1w2b];
    disp(urutan)
    pause(0.1)
    
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
end
    h = w1w2b;
    %menampilkan w1 w2 b yang baru
    disp("    w1     w2    b")  
end
