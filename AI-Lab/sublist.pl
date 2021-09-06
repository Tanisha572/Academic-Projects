%20.	Write a Program in PROLOG to implement sublist(S, L) that checks whether the list S is the sublist of list L or not. (Check for sequence or the part in the same order).
go :- write('enter list: '),
      read(L),
      format('enter list to search for in ~w: ', [L]),
      read(S),
      sublst(S, L),
      format('sublist ~w exists in list ~w ', [S, L]), !.
go :- write('not a sublist of the given list'),!.

check_next([], _) :- !.
check_next([XH|XT], [LH|LT]) :- XH == LH,
                                check_next(XT,LT).

sublst([],[]) :- !.
sublst([], _) :- !.
sublst([SH|ST], [LH|LT]) :- SH == LH,  %if the first element of S matches, then check the subsequent list against the subsequent list of L
                            check_next(ST,LT).
%if above rule fails, then we must continue search as S may occur later in L
sublst([SH|ST], [_|LT]) :- sublst([SH|ST], LT),!.
