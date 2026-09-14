female(hassa).
female(shaikhah).
female(reema).
female(malak).
female(sara).
female(ragad).
male(abdullah).
male(mohammad).
male(zaid).

parent(hassa, shaikhah).
parent(hassa, zaid).
parent(shaikhah, malak).
parent(shaikhah, reema).
parent(shaikhah, mohammad).
parent(abdullah, malak).
parent(abdullah, reema).
parent(abdullah, mohammad).
parent(zaid, ragad).
parent(sara, ragad).

father(X,Y) :-
    male(X),
    parent(X,Y).

mother(X,Y) :-
    female(X),
    parent(X,Y).

sister(X,Y) :-
    female(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.

brother(X,Y) :-
    male(X),
    parent(P,Y),
    parent(P,X),
    X \= Y.

