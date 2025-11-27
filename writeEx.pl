% main.pl
% A simple Prolog program that prints a formatted message

main :-
    Name = 'Alice',
    Age = 30,
    Hello = 'Hello World',
    % Example 1: print a simple statement
    write('Hello World'), nl,

    % Example 2: print a simple atom
    write(Hello), nl,

    % Example 3: print a integrer variable
    write('Age: '),
    write(Age), nl,

    % Example 4: Example 3: print a string variable
    write('Name: '),
    write(Name), nl,
    
    halt.