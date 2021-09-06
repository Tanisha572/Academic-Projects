%16. Write a Prolog program to implement nth_element (N, L, X) where N is the desired position, L is
%a list and X represents the Nth element of L.
go :- write('enter list: '),
      read(L),
      write('enter the position (0-based): '),
      read(N),
%      nth_element_another_way(N, L, X, 0),
      nth_element(N, L, X),
      format('~wth element of the list ~w: ~w', [N, L, X]), !.
go :- write('this position isn\'t valid for given list').

%is can only assign numeric values and never lists and strings, so use = instead, else type_error
nth_element(0, [H|_], X) :- X = H, !.
nth_element(N, [_|T], X) :- M is N-1,
                            nth_element(M, T, X).




nth_element_another_way(N, [H|_], X, N) :- X = H, !.
nth_element_another_way(N, [_|T], X, I) :- NextI is I+1,
                                           nth_element_another_way(N, T, X, NextI).
