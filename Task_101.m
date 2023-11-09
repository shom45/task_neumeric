function sowmik = task_101 ()

   V= input("Matrix V : ");
   C= input("Matrix C : ");
   mx_V = max(max(V));
   fprintf("Maximum value of V : %d\n", mx_V);
   if size(V,2)==size(C,1)
      Mul = V * C;
      fprintf("Multiplication :\n");
      disp (Mul);
   else
      fprintf ("Matrix multiplication is not possible!\n");
   end

endfunction
