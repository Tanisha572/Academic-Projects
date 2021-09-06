go:-  %always when go. is called, first go will be called first.
      write('enter start node: '),
      read(X),
      write('enter end node: '),
      read(Y),
      check_path(X, Y),  %if this fails, then next line won't be checked when there is no path
      %and this execution of this go will stop then and there, but since there is another go, that will be executed next
      %automatically
      format('path exist between ~w and ~w ', [X, Y]), !.
      %!. in above statement will stop execution of the next go. if the above statement is not executed in the first place,
      %then execution will continue, i.e. next go will be called

go :- write('path does not exist!'), !.
%knowledge base
edge(p,q).
edge(q,r).
edge(q,s).
edge(s,t).


check_path(A, B):- edge(A, B), !.
check_path(X, Y):- edge(X, Z),
                   check_path(Z, Y), !.  %if this condition fails, then next line won't be executed
