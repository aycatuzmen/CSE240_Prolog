
% Initial Facts 
happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

% CODE: if bob is happy then bob runs 
%       An if comes as conculsion :- condition 
%       Reading if condition then conclusion 
runs(bob) :- happy(bob).
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Query 1: In main, we test whether bob runs 
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% We can check if multiple conditions are true by putting a comma (and)
% between questions 
% CODE: add a rule to test if anyone is happy and with albert then they dance 
%       if the X is happy and X is with albert then X dances 
dances(X) :- happy(X), with_albert(X).

% We can define rules that refer to prior rules to keep commands brief
% Plus, can combine with output
% CODE: rule if alice dances AND write('Alice is happy and with Albert so she dances')
%       then does_alice_dance 
%       Do not forget the period
does_alice_dance :- dances(alice),  write('Alice is happy and with Albert so she dances').
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Query 2: In main, we test whether does_alice_test by invoking it 
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% CODE: Add a fact that bob is near water
near_water(bob).
% CODE: a rule if X is happy and near water then X swims 
%       a comma is used for and 

swims(X) :- happy(X), near_water(X).
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% Query 3: In main, the code tests if bob swims 
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Automatically execute main using the Initialization Directive to Run it
:- initialization(main).                                                                                                                                       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                                                                                                                                               
main :-   
    write('Query 1: Does bob run?\n'),
    (   
        runs(bob)  % if bob runs 
        ->         % then 
        write('\tYes bob runs\n') 
        ;          % else   
        write('\tNo bob does not run\n')        
    ),                 
    write('Query 2: Does alice dance ?\n\t'),
    does_alice_dance,           % does alice dance should print out its own results     
    write('\nQuery 3: Does bob swim ?\n'),
    (
        swims(bob)   % if bob swims 
        -> 
        write('\tYes bob swims\n')
        ; 
        write('\tNo bob does not swim\n')
    ),                     
    halt.              
