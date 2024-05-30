parent(X, Y) :- mother(X, Y).
parent(X, Y) :- father(X, Y).
grandfather(X, Y) :- 
    father(X, Z), 
    parent(Z, Y).
father(randy, sally).
mother(sally, mary).
