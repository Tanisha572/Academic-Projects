%18. Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list
go :- write('enter list: '),
      read(L),
      maxlist(L, M),
      format('max element found in list ~w is ~w ', [L, M]), !.

getMax(A, B, R) :- A>B, R is A,!.
getMax(_, B, R) :- R is B.

maxlist([A|[]], M) :- M is A, !.
maxlist([A|B], M) :- maxlist(B, X),
                     getMax(A, X, R),
                     M is R, !.
