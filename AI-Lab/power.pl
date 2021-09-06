go:-  write('enter base number: '),
      read(A),
      write('enter exponent(power): '),
      read(B),
      power(A,B,P),
      format('~w to the power ~w = ~w ~n', [A, B, P]).

power(_, 0, P) :- P is 1, !.
power(X, Y, P) :- Z is Y-1,
                  power(X, Z, P1),
                  P is X*P1.
