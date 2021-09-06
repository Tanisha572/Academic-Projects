go:-  write('enter first number: '),
      read(A),
      write('enter second number: '),
      read(B),
      gcd(A,B,G),
      format('gcd of ~w and ~w = ~w ~n', [A, B, G]).

gcd(X, 0, G) :- G is X, !.
gcd(X, Y, G) :- X<Y,
                gcd(Y, X, G).
gcd(X, Y, G) :- X>=Y,
                Z is X mod Y,
                gcd(Y, Z, G).
