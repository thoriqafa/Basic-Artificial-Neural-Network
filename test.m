clc
fprintf("PILIH METODDE\n")
fprintf("1. PERCEPTRON\n2. HEBBNET\n3. ADALINE\n")
pilih_metode = input("PILIH METODE : ");
if pilih_metode<1 || pilih_metode>3
    disp("PILIHAN TIDAK ADA!!")
else
    if pilih_metode == 1
        disp("=====================")
        fprintf(" P E R C E P T R O N\n")
        disp("=====================")
        fprintf("1. NAND\n2. AND NOT\n3. OR\n4. NOR\n5. XOR\n")
        pilih_target = input("PILIH TARGET : ");
        if pilih_target == 1
            disp("    ======")
            disp("     NAND")
            disp("    ======")
            disp("     x1    "+"x2"+"    b"+"    net"+"   tar"+"   dw1   dw2   db"+"    w1     w2    b")
            disp(perceptron(inisial_x1x2b,nand,learningrate,threshold));
        else if pilih_target == 2
                disp("    =========")
                disp("     AND NOT")
                disp("    =========")
                disp("     x1    "+"x2"+"    b"+"    net"+"   tar"+"   dw1   dw2   db"+"    w1     w2    b")
                disp(perceptron(inisial_x1x2b,andnot,learningrate,threshold));
            else if pilih_target == 3
                    disp("    ====")
                    disp("     OR")
                    disp("    ====")
                    disp("     x1    "+"x2"+"    b"+"    net"+"   tar"+"   dw1   dw2   db"+"    w1     w2    b")
                    disp(perceptron(inisial_x1x2b,or,learningrate,threshold));
                else if pilih_target == 4
                        disp("    =====")
                        disp("     NOR")
                        disp("    =====")
                        disp("     x1    "+"x2"+"    b"+"    net"+"   tar"+"   dw1   dw2   db"+"    w1     w2    b")
                        disp(perceptron(inisial_x1x2b,nor,learningrate,threshold));
                    else if pilih_target == 5
                            disp("    =====")
                            disp("     XOR")
                            disp("    =====")
                            disp("     x1    "+"x2"+"    b"+"    net"+"   tar"+"   dw1   dw2   db"+"    w1     w2    b")
                            disp(perceptron(inisial_x1x2b,xor,learningrate,threshold));
                        else
                            disp("PILIHAN TIDAK ADA!!")
                        end
                    end
                end
            end
        end
    else if pilih_metode == 2
            disp("===============")
            fprintf(" H E B B N E T\n")
            disp("===============")
            fprintf("1. NAND\n2. AND NOT\n3. OR\n4. NOR\n5. XOR\n")
            pilih_target = input("PILIH TARGET : ");
            if pilih_target == 1
            disp("    ======")
            disp("     NAND")
            disp("    ======")
            disp("     x1    "+"x2    b    "+" t   "+"delw1 "+"delw2 "+"delb   "+"w1     "+"w2    "+"b ");
            disp(hebbnet(inisial_x1x2b,nand));
            else if pilih_target == 2
                    disp("    =========")
                    disp("     AND NOT")
                    disp("    =========")
                    disp("     x1    "+"x2    b    "+" t   "+"delw1 "+"delw2 "+"delb   "+"w1     "+"w2    "+"b ");
                    disp(hebbnet(inisial_x1x2b,andnot));
                else if pilih_target == 3
                        disp("    ====")
                        disp("     OR")
                        disp("    ====")
                        disp("     x1    "+"x2    b    "+" t   "+"delw1 "+"delw2 "+"delb   "+"w1     "+"w2    "+"b ");
                        disp(hebbnet(inisial_x1x2b,or));
                    else if pilih_target == 4
                            disp("    =====")
                            disp("     NOR")
                            disp("    =====")
                            disp("     x1    "+"x2    b    "+" t   "+"delw1 "+"delw2 "+"delb   "+"w1     "+"w2    "+"b ");
                            disp(hebbnet(inisial_x1x2b,nor));
                        else if pilih_target == 5
                                disp("    =====")
                                disp("     XOR")
                                disp("    =====")
                                disp("     x1    "+"x2    b    "+" t   "+"delw1 "+"delw2 "+"delb   "+"w1     "+"w2    "+"b ");
                                disp(hebbnet(inisial_x1x2b,xor));
                            else
                                disp("PILIHAN TIDAK ADA!!")
                        end
                    end
                end
            end
        end
        else if pilih_metode == 3
                disp("===============")
                fprintf(" A D A L I N E\n")
                disp("===============")
                fprintf("1. NAND\n2. AND NOT\n3. OR\n4. NOR\n5. XOR\n")
                pilih_target = input("PILIH TARGET : ");
                if pilih_target == 1
                disp("    ======")
                disp("     NAND")
                disp("    ======")
                disp("    x1   "+" x2     b  "+"  w1    w2     b ");
                disp(adaline(inisial_x1x2b,nand,learningrate,toleransi))
                else if pilih_target == 2
                        disp("    =========")
                        disp("     AND NOT")
                        disp("    =========")
                        disp("    x1   "+" x2     b  "+"  w1    w2     b ");
                        disp(adaline(inisial_x1x2b,andnot,learningrate,toleransi))
                        else if pilih_target == 3
                                disp("    ====")
                                disp("     OR")
                                disp("    ====")
                                disp("    x1   "+" x2     b  "+"  w1    w2     b ");
                                disp(adaline(inisial_x1x2b,or,learningrate,toleransi))
                            else if pilih_target == 4
                                    disp("    =====")
                                    disp("     NOR")
                                    disp("    =====")
                                    disp("    x1   "+" x2     b  "+"  w1    w2     b ");
                                    disp(adaline(inisial_x1x2b,nor,learningrate,toleransi))
                                else if pilih_target == 5
                                        disp("    =====")
                                        disp("     XOR")
                                        disp("    =====")
                                        disp("    x1   "+" x2     b  "+"  w1    w2     b ");
                                        disp(adaline(inisial_x1x2b,xor,learningrate,toleransi))
                                else
                                    disp("PILIHAN TIDAK ADA!!")
                            end
                        end
                    end
                end
            end
            else
                disp("PILIHAN TIDAK ADA!!")
            end
        end
    end
end

    
