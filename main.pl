

% clauses 

% romeo loves juliet, romeo and juliet are Atoms
loves(romeo, juliet).

% This is a rule where :- (if) says if the item on the right is
% true, then so is the item on the left
loves(juliet, romeo) :- loves(romeo, juliet).


% Query examples:
% ?- loves(romeo, juliet).
% ?- loves(juliet, romeo).
% ?- loves(X, juliet).
% ?- loves(romeo, Y).