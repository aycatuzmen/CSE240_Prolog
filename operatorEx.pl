% Initial Facts 
%Fix the code below to make it work properly
%number1 is 10+0.
%number2 is 5+0.


%Sum is number1 + number2.
%Number1 is 20 + 5.

run_query1 :-
    write('Query 1: What is Number1 before reassignment?'), nl,
    write('\tNumber1 is: '), write(number1), nl.

run_query2 :-
    write('Query 2: What is the sum of 10 and 5?'), nl,
    write('\tThe sum is: '), write(Sum), nl.
run_query3 :-
    write('Query 3: What is Number1 after reassignment?'), nl,
    write('\tNumber1 is: '), write(number1), nl.


