%Write a prolog program that implements Semantic Networks (ATN/RTN).
class(person).
class(male).
class(female).

isa(male, person).
isa(female, person).
isa(mary, female).
isa(david, male).

owns(david, house).
owns(mary, car).

isperson(X) :- isa(X, person).
isperson(X) :- isa(X, Y), isa(Y, person).

hascar(X) :- isperson(X), owns(X, car).
