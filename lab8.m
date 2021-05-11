%Legendre polynomial plot

tic

n=4;
clf

t=(-1: 0.01 :1)'; % column array of nodes

ls = {':', '-', '--', '-.'}%line style array
lw = [1.5, 0.5, 0.7, 1];
colorstring = 'kbgry';

for i=1:n

  y=Legendre(i,t);
  plot(t,y, 'LineStyle', ls{i}, 'LineWidth', 1, 'Color', colorstring(i));
  hold on;
endfor

legend('n=1', 'n=2', 'n=3', 'n=4', 'Location', 'northwest');
xlabel('t', 'FontSize', 11, 'FontAngle', 'italic');
ylabel('L(t)', 'FontSize', 11, 'FontAngle', 'italic');
title('LegPolynomial');


toc