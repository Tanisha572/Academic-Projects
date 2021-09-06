%12. Write a Prolog program to implement reverse (L, R) where List L is original and List R is reversed list.
go :- write('enter list: '),
      read(L),
      reverselist(L, R),
      format('reverse of list ~w is ~w ', [L, R]), !.

%this first condition is set only for when an empty list is entered by user.
%else the control will never come to this through recursion, it'll stop in the second condition itself
reverselist([],[]):- !.
reverselist([X|[]],[X]) :-!.
reverselist([LH|LT], R) :- reverselist(LT, L),
                           append(L, [LH], R).
