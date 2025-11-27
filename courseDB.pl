course(cse230, 
    day(tue, thur),
    time(1040, 1100),
    instructor(yinog, chen),
    coor184
).
course(fse100, 
    day(tue, thur),
    time(900, 1050),
    instructor(tuzmen, ayca),
    tooker101
).
course(fse100, 
    day(tue, thur),
    time(1100, 1250),
    instructor(tuzmen, ayca),
    tooker101
).
course(fse100, 
    day(mon, wed),
    time(100, 250),
    instructor(tuzmen, ayca),
    tooker101
).
instructorOfAClass(Instructor, Class) :- course(Class,_,_,Instructor,_).
% instructor(First, Last, Class)
instructor(First, Last, Class) :-
    course(Class, _, _, instructor(First, Last), _).
% room(Location, Day, Time)
room(Location, Day, Time) :- course(_, Day, Time, _, Location).

%goals
% ?- instructor(tuzmen, Class).
% ?- instructor(tuzmen, ayca, Class).
% ?- room(tooker101, Day, Time).
% ?- room(Location, tue, Time).
% ?- room(Location, tue, thur, Time).
% ?- room(Location, (tue, thur), Time). 
% ?- room(Location, day(tue, thur), Time).
% ?- room(Location, day(tue, thur), time(1100, 1250)).
% ?- course(Class, Day, Time, Instructor, Location).
% ?- instructorOfAClass((tuzmen, ayca), Class).
% ?- course(Class, Day, Time, instructor(tuzmen, ayca), Location).
% ?- course(Class, Day, Time, Instructor, tooker101).
% ?- course(fse100, Day, Time, Instructor, Location).
% ?- course(Class, day(tue, thur), Time, Instructor, Location).
% ?- course(Class, Day, time(1100, 1250), Instructor, Location).
% ?- course(Class, Day, Time, instructor(tuzmen, ayca), tooker101).
% ?- course(fse100, day(tue, thur), time(1100, 1250), instructor(tuzmen, ayca), tooker101).
% ?- course(fse100, Day, time(1100, 1250), instructor(tuzmen, ayca), tooker101).
% ?- course(fse100, day(tue, thur), Time, instructor(tuzmen, ayca), tooker101).
% ?- instructorOfAClass(instructor(tuzmen, ayca), Class).
