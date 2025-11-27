%facts
location(london, 51, 0).
location(phoenix, 33, 112).
location(tokyo, 35, -139).
location(rome, 41, -12).
location(madrid, 48, 3).
location(canberra, -35, -149).
location(johannesburg, -26, -28).

%rules
%CODE: complete the rules below to determine if one city is north of another city
north_of(X, Y) :-
	location(X, Lat1, _),
	location(Y, Lat2, _),
	Lat1 > Lat2.
%CODE: complete the rules below to determine if one city is west of another city
west_of(X, Y) :-
	location(X, _, Long1),
	location(Y, _, Long2),
	Long1 > Long2.
	

