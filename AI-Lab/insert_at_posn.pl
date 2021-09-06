%19. Write a prolog program to implement insert_nth(I, N, L, R) that inserts an item I into Nth position of list L to generate a list R.
go :- write('enter list: '),
      read(L),
      write('enter element to be inserted: '),
      read(I),
      format('enter position at which ~w is to be inserted (0-based indexing): ', [I]),
      read(N),
      length(L, Len),
      N >= 0, N =< Len,
      insert_nth(I, N, L, R),
      format('~w inserted at position ~w of list ~w: ~w', [I, N, L, R]), !.

go :- write('invalid position'),!.

insert_nth(I, 0, L, R) :-     append([I], L, R), !.
insert_nth(I, N, [H|T], R) :- M is N-1,
                              insert_nth(I, M, T, R1),
                              append([H], R1, R),!.
