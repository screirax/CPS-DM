student(per).
student(mia).
student(bob).
student(ann).
student(jack).
student(liz).
student(john).
student(ida).


class(monday, danish).
class(thuesday, jerman).
class(thuesday, selfstudy).
class(wednesday, english).
class(thursday, gym).

room(203).

% danish, english, gym,
classes_for_everyone(Student, Class):-
	student(Student),
	(Class == 'danish'; Class == 'english'; Class == 'gym').

% jerman
student_class(liz, jerman).
student_class(bob, jerman).
student_class(ida, jerman).
student_class(per, jerman).

% selfstudy
student_class_selfstudy(Student, Class):-
	student(Student),
	not(student_class(Student, 'jerman')),
	Class == 'selfstudy'.

student_info(Student, Class):-
	classes_for_everyone(Student, Class);
	student_class(Student, Class);
	student_class_selfstudy(Student, Class).
	
classes(Day, Class, Room):-
	class(Day, Class),
	room(Room).
