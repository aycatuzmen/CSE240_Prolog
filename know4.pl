wizard(ron).
wizard():- hasBroom(X), hasWand(X).
hasWand(harry).
hasWand(_).
quidditchPlayer(harry).
hasBroom(X):- quidditchPlayer(X). 

% Example Queries:
% ?- wizard(ron).               % Should return true.
% ?- wizard(harry).            % Should return true.
% ?- hasWand(harry).           % Should return true.
% ?- hasBroom(harry).         % Should return true. 
