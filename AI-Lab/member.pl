%10. Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not.
go :- write('enter list: '),
      read(L),
      write('enter the element to check membership for: '),
      read(X),
      is_member(L, X),
      format('~w is a member of ~w ', [X, L]), !.

go :- write('not a member!'), !.

is_member([X|_],X) :- !.
is_member([_|B],X) :- is_member(B, X).
