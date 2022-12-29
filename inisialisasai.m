%inisialisasi input x1 x2 b
inisial_x1x2b = [1 1 1;1 -1 1;-1 1 1;-1 -1 1];

%inisialisasi learning rate / alpa
%learningrate = rand(1,1);
learningrate = 1;

%inisialisasi threshold 
threshold = 0.25;

%inisialisasi toleransi
toleransi = 0.05;

%inisialisasi target nand, and not, or, nor, xor
nand = [-1,1,1,1];
andnot = [-1,1,-1,-1];
or = [1,1,1,-1];
nor = [-1,-1,-1,1];
xor = [-1,1,1,-1];