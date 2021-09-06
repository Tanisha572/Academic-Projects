go :- write('enter a number: '),
      read(N),
      fib(N, T),
      format('~w th term of fibonacci series = ~w ~n', [N, T]).

fib(0, T) :- T is 0, !.
fib(1, T) :- T is 1, !.
fib(Y, T) :- P is Y-1,
             Q is Y-2,
             fib(P,A),
             fib(Q,B),
             T is A+B.
