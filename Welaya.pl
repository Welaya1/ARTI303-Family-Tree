male(ali).
male(ahmed).
male(jafar).

female(salama).
female(welaya).
female(eman).
female(durrah).

parent(ali, welaya).
parent(salama, welaya).

parent(ali, eman).
parent(salama, eman).

parent(ali, durrah).
parent(salama, durrah).

parent(ali, ahmed).
parent(salama, ahmed).

parent(ali, jafar).
parent(salama, jafar).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.