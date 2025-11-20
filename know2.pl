%facts
woman(mia).
woman(jody).
woman(yolanda).
playsAirGuitar(jody).
party.
nutritious(salad).
tasty(ice_cream).

%rules
eats(jules, X) :-
    tasty(X).
eats(jules, X) :-
    nutritious(X).

