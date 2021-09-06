%Write a program in PROLOG to implement remove_dup (L, R) where L denotes the list with some duplicates and the list R denotes the list with duplicates removed.
go :- write('enter list: '),
      read(L),
      remove_dup(L, R),
      format('after removing duplicates from list ~w: ~w', [L, R]), !.

%idea is to recursively make the list shorter till one element is left.
%Base case: as 1 element is trivially unique, we'll make R = [H]. Now we have a list R which contains only unique elements
%when it returns, we see if H is in R1. Now 2 conditions are to be handled
  %one, when it is not a member. then we simply append H into R1 and make this resultant set as R.
  %two, when it is a member, then we need to set R as R1, ignoring the current H altogether. 
remove_dup([H|[]], R) :- R = [H], !.
remove_dup([H|T], R) :- remove_dup(T, R1),
                        \+ member(H, R1), %if H is not a member in R1, then append
                        append([H], R1, R).
remove_dup([H|T], R) :- remove_dup(T, R1),
                        member(H, R1),  %if H is  member in R1, then skip this element. set R as R1 and return
                        R = R1.
