killer(butch).
married(mia, marsellus).
married(marsellus, mia).   % make marriage  explicit/symmetric
dead(zed).
gives(ayca, mia, footmassage).
nutritious(salad).
tasty(ice_cream).
good_dancer(vincent).

% Rules
% Marsellus kills anyone who gives Mia a footmassage.
kills(marsellus, Person) :-
    gives(Person, mia, footmassage).

% Mia loves anyone who is a good dancer.
loves(mia, Person) :-
    good_dancer(Person).

% Jules eats anything that is nutritious or tasty.
eats(jules, X) :-
    nutritious(X).
eats(jules, X) :-
    tasty(X).
