%Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so that they are true
%if their argument is a list of even or odd length respectively
go :- write('enter list: '),
      read(L),
      display_menu(L).

display_menu(L) :-  nl,
                    write('1. check even length'), nl,
                    write('2. check odd length'), nl,
                    write('enter a choice: '),
                    read(C),
                    choice(C, L), nl,
                    write('continue? (y./n.): '),
                    read(X),
                    X == 'y', display_menu(L).
display_menu(_) :- !.
%display_menu() is called again for a positive termination. (return yes at the end. If this wasn’t included, then the program would return no)
%_is argument for second call so as to avoid the singleton variable warning

choice(1, L) :- evenlength(L).
choice(2, L) :- oddlength(L).

evenlength(L) :- length(L, N), R is N mod 2, R == 0, format('~w is of even length ~w', [L, N]), !.
evenlength(L) :- format('~w is not of even length', [L]), !.
oddlength(L) :- length(L, N), R is N mod 2, R == 1, format('~w is of odd length ~w', [L, N]), !.
oddlength(L) :- format('~w is not of odd length', [L]), !.
