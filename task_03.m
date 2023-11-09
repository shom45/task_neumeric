function retval = task_103 (input1,input2)

  function y=f(x)
    y=x.^3-2*x.^2-8;
  end
  a=2;
  b=3;
  e=0.000001;
  A=[];

  while(b-a)/2 >e
      c = (a*f(b) - b*f(a)) / (f(b) - f(a));
      A =[A;c];
      if f(c)==0
        break;
      elseif f(a)*f(c) < 0
        b = c;
      else f(b)*f(c) < 0
        a = c;
      end
    end
   fprintf('%f\n', A(end));


  x = linspace(1, 3, 50);
  y = f(x);
  plot(x, y,'r');
  grid on;
  hold on;
  plot(A, f(A), 'bp');
  xlabel('Values of x');
  ylabel('function values');
  title('False-Position Method');
  legend('function values ', 'Roots');


endfunction

