go :- write('enter a number: '),
      read(N),
      fact(N+1, Z),
      format('factorial of ~w = ~w ~n', [N, Z]).

fact(1, Z) :- Z is 1, ! .
fact(Y, Z) :- X is Y-1,
              fact(X, F),
              Z is X*F.
