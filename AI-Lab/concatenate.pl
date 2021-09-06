%11. Write a Prolog program to implement conc (L1, L2, L3) where L2 is the list to be appended with
%L1 to get the resulted list L3.
go :- write('enter list1: '),
      read(L1),
      write('enter list2, list to be appended: '),
      read(L2),
      conc(L1, L2, L3),
      format('concatenation of ~w with ~w is: ~w ', [L1, L2, L3]), !.

conc([],L, L) :-  !.
conc([L1H|L1T], L2, [L1H|Z]) :- conc(L1T, L2, Z).
