%Edward Venator
%EECS 304 Lab 1
%Problem 1

%1.1

A = [
    1   2   3   5
    4   5   1   2
    7   5   1   2
    2   3   1   6
    ];
b = [
    416
    824
    381
    275
    ];

x = eye(4) / A * b

%1.2

eig(A)
cond(A)