go:-  write('enter first number: '),
      read(A),
      write('enter second number: '),
      read(B),
      sum(A,B,SUM),
      format('~w + ~w = ~w ~n', [A, B, SUM]).

sum(X,Y,S) :-
  S is X+Y.
