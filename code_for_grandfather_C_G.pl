parent(X, Y) :- mother(X, Y).
parent(X, Y) :- father(X, Y).
grandfather(X, Y) :- 
    father(X, Z), 
    parent(Z, Y).
grandmother(X, Y) :- 
    mother(X, Z), 
    parent(Z, Y).
father(randy, sally).
father(randy, joe).
father(randy, lily).
father(joe, sue).
mother(sally, mary).