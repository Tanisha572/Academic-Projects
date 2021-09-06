%22.	Write a program in PROLOG to implement delete_all (X, L, R) where X denotes the element whose all occurrences has to be deleted from list L to obtain list R.
go :- write('enter list: '),
      read(L),
      write('enter element to be deleted (all occurrences): '),
      read(X),
      delete_all(X, L, R),
      format('deleted all ~w from list ~w: ~w', [X, L, R]), !.

delete_all(_,[] ,[]) :- !.
delete_all(X ,[LH|LT] , R) :- X == LH,
                              delete_all(X, LT, T),
                              append([],T, R).
delete_all(X, [LH|LT], R) :- delete_all(X, LT, T),
                              append([LH],T, R).
