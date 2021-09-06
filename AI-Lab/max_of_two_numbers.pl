go :- write('enter first number: '),
      read(A),
      write('enter second number: '),
      read(B),
      maxg(A,B,M),
      format('max of ~w and ~w = ~w ~n', [A, B, M]).
% M is X if X<=Y, and M is Y if X < Y

max(X,Y,X) :- X>=Y.
max(X,Y,Y) :- X<Y.

%green-cut as it stops further execution as soon as the condition is established
maxg(X,Y,X) :- X>=Y, !.
maxg(X,Y,Y) :- X<Y, !.

%red-cut
maxr(X,Y,X) :- X>=Y, !.
maxr(_,Y,Y).          %will become true trivially if the above statement is not matched
