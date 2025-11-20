% main.pl
% A simple Prolog program that prints a formatted message

main :-
    Name = 'Alice',
    Age = 30,
    % Example 1: print with variables
    format('~w is ~d years old.~n', [Name, Age]),

    % Example 2: print a simple atom
    format('Name: ~w~n', [john]),

    % Example 3: print a quoted atom (will include quotes)
    format('~q~n', ['hello world']),

    % Example 4: another commented example (not executed)
    format(' Age: ~d~n', [25]),
    
    % Example 5: print floating-point number and string
    Temperature = 23.5678, Message = "Welcome to the Arctic region!",

    % ~f = floating-point number
    format('Current temperature: ~2f°C~n', [Temperature]),

    % ~n = new line
    format('~n--- Information ---~n', []),

    %Example 6: print string message
    % ~s = string (prints list of characters as text)
    format('~s~n', [Message]).