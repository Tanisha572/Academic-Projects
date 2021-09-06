%23.	Write a program in PROLOG to implement merge (L1, L2, L3) where L1 is first ordered list and L2 is second ordered list and L3 represents the merged list.
go :- write('enter sorted list: '),
      read(L1),
      format('enter sorted list to be merged with ~w : ', [L1]),
      read(L2),
      merge(L1, L2, L3),
      format('merged ~w with ~w : ~w ', [L1, L2, L3]), !.

merge([],[],[]) :- !.
merge([], L2, R) :- %first list is empty so append L2 into the merged list formed till now
                    R = L2.
merge(L1, [], R) :- %second list is empty so append L1 into the merged list formed till now
                    R = L1.
merge([L1H|L1T], [L2H|L2T], R) :- L1H =< L2H,
                                  merge(L1T, [L2H|L2T], X),
                                  append([L1H], X, R).

merge([L1H|L1T], [L2H|L2T], R) :- merge([L1H|L1T], L2T, X),
                                  append([L2H], X, R).
