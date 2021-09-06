%Write a program in PROLOG to implement towerofhanoi (N) where N represents the number of discs
go :- write('enter number of discs: '),
      read(N),
      towerofhanoi(N).
towerofhanoi(N) :- move(N, source, auxillary, destination).

% naming smaller disks with smaller numbers and larger discs with larger numbers.
%so, disk 1 is the smallest and disc N is the biggest


move(0,_,_,_) :- write('no discs to move'),!.
move(1, S, _, D) :- format('moved disc 1 from ~w tower to ~w tower', [S, D]),nl, !.
move(N, S, A, D) :- M is N-1,
                    move(M,S,D,A),
                    format('moved disc ~w from ~w tower to ~w tower', [N, S, D]),nl,
                    move(M,A,S,D).
