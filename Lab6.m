clear all
clc
tic
choice = input("select case: ");
if choice == 1
A = [2, 7, -2; 1, -2, 2; 3, -2, 1], b = [7; 19; -5]
elseif choice == 2
A = [1, 2, 3, 4; 2, 5, 1, 10; 3, 1, 35, 5; 4, 10, 5, 45], b = [9; 35; -45; 189]
elseif choice == 3
A = [1, 1, 1; 1, 2, -3; 4, 2, 3; 7, 7, -2], b = [3; 0; 9; 12]
elseif choice == 4
A = [2, 1, -1, 3; 1, 1, -1, 1; 5, 3, -3, 7], b = [5; 2; 12]
else
error("not a valid choice");
endif

# 1. Checking the condition

[lines, columns] = size(A);

if lines < columns
  error("matrix invalid");
endif

# 2. QR

R = zeros(columns);
Q = zeros(lines, columns);

for i = 1 : columns
  sum = 0;
  
  for k = 1 : i - 1 
    R(k, i) = transpose(Q(:, k)) * A(:, i);
    sum += R(k, i) * Q(:, k);
  endfor
  
  v = A(:, i) - sum;
  R(i, i) = norm(v);
  Q(:, i) = v / norm(v);
  
endfor


# 3. Solving y = transpose(Q) * b

y = transpose(Q) * b;

# 4. Solving R * x = y

x = zeros(columns, 1);

x(columns) = y(columns)/ R(columns, columns);

for i = columns - 1 : -1 : 1
  sum = 0;
  for j = i + 1 : columns
    sum += R(i, j) * x(j);
  endfor
  x(i) = 1/R(i, i) * (y(i) - sum);
endfor

x
toc