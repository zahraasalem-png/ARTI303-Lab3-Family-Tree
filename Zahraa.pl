% Gender
male(abdullah).
male(mohammed).
male(nasser).
male(abdulelah).
male(hussain).
female(najat).
female(eman).
female(zahraa).
female(malak).

% Parent
parent(abdullah, mohammed).
parent(abdullah, eman).
parent(mohammed, abdulelah).
parent(mohammed, zahraa).
parent(najat, abdulelah).
parent(najat, zahraa).
parent(eman, hussain).
parent(eman, malak).
parent(nasser, hussain).
parent(nasser, malak).

% Father
father(X, Y) :-
    male(X),
    parent(X, Y).

% Mother
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Brother
brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Sister
sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.




