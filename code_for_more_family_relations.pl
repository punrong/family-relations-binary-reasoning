parent(X, Y) :- mother(X, Y).
parent(X, Y) :- father(X, Y).
grandfather(X, Y) :- 
    father(X, Z), 
    parent(Z, Y).
grandmother(X, Y) :- 
    mother(X, Z), 
    parent(Z, Y).
grandparent(X, Y) :- grandfather(X, Y).
grandparent(X, Y) :- grandmother(X, Y).
sibling(X, Y) :- 
    parent(Z, X), 
    parent(Z, Y), 
    X \= Y.
cousin(Cousin, Person) :- 
    grandparent(Grandparent, Person), 
    grandparent(Grandparent, Cousin), 
    Person \= Cousin.
uncle(Uncle, NieceNephew) :-
    (   father(Person, NieceNephew); mother(Person, NieceNephew) ),
    male(Uncle),
    sibling(Uncle, Person).
aunt(Aunt, NieceNephew) :-
    (   father(Person, NieceNephew); mother(Person, NieceNephew) ),
    female(Aunt),
    sibling(Aunt, Person).
father(randy, sally).
father(randy, joe).
father(randy, lily).
father(joe, sue).
mother(sally, mary).
male(joe).
female(sally).
female(lily).
