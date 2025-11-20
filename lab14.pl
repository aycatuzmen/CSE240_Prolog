% Facts
% CODE: albert, bob, bill, carl, charlie, and dan are male
male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
% CODE: alice, betsy, and diana are female
female(alice).
female(besty).
female(diana).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Automatically execute main using the Initialization Directive to Run it
:- initialization(main).                                                                                                                                       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

main :-
    % CODE using listing function with predicate to list all females 
    listing(female),
    % CODE using listing function with predicate to list all males 
    listing(male),
    halt.