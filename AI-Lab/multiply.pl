go:-  write('enter first number: '),
      read(A),
      write('enter second number: '),
      read(B),
      multiply(A,B,R),
      format('product of ~w and ~w = ~w ~n', [A, B, R]).

multiply(A, B, R) :- R is A*B.
