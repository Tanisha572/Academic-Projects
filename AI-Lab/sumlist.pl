%14. Write a Prolog program to implement sumlist(L, S) so that S is the sum of a given list L.
go :- write('enter list: '),
      read(L),
      sumlist(L, S),
      format('sum of list ~w is ~w ', [L, S]), !.

sumlist([], S) :- S = 0, !.
sumlist([A|B], S) :- sumlist(B, X),
                     S is A + X.
