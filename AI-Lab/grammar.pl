%Write a PROLOG program that will take grammar rules

sentence(P1, P3) :- np(P1, P2) , vp(P2, P3).

np(P1, P2) :- noun(P1, P2), !.
np(P1, P3) :- det(P1, P2), noun(P2, P3),!.
vp(P1, P3) :- verb(P1, P2), np(P2, P3),!.

det([a|X], X) :- !.
det([an|X], X) :- !.
det([the|X], X) :- !.

noun([boy|X], X).
noun([girl|X], X).
noun([apple|X], X).
noun([ball|X], X).
noun([song|X], X).

verb([sing|X], X).
verb([sings|X], X).
verb([eats|X], X).
verb([plays|X], X).
