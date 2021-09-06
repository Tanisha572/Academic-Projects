%21.	Write a Prolog program to implement delete_nth (N, L, R) that removes the element on Nth position from a list L to generate a list R.
go :- write('enter list: '),
      read(L),
      write('enter position for the element to be deleted (0-based indexing): '),
      read(N),
      length(L, Len),
      N >= 0, N < Len,
      delete_nth(N, L, R),
      format('~wth element deleted from list ~w: ~w', [N, L, R]), !.
go :- write('invalid position'),!.

delete_nth(0, [_|LT], LT) :- !.
delete_nth(N, [LH|LT], R) :-  M is N-1,
                        delete_nth(M, LT, T),
                        append([LH], T, R),!.
