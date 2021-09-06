%13. Write a program in PROLOG to implement palindrome (L) which checks whether a list L is a palindrome or not.
go :- write('enter list: '),
      read(L),
      palindrome(L),
      format('~w list is palindrome', [L]), !.
go :- write('given list is not palindrome ').

reverselist([],[]):- !.
reverselist([X|[]],[X]) :-!.
reverselist([LH|LT], R) :- reverselist(LT, L),
                           append(L, [LH], R).

palindrome([]) :- !.
palindrome([_|[]]) :- !.
palindrome(L) :- reverselist(L, Rev),
                 Rev = L.
