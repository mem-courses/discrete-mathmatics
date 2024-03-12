#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #2: Predicates and Quantifiers",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "3230104585"
	),),
	semester: "Spring-Summer 2024",
	date: "March 2, 2024",
)

= 1.4 Predicates and Quantifiers

#hw("6")[
	Let $N(x)$ be the statement "$x$ has visited North Dakota," where the domain consists of the students in your school. Express each of these quantifications in English.

	(c) $not x exists N(x)$

	(d) $exists x not N(x)$

	(e) $not forall x N(x)$

	(f) $forall x not N(x)$
][
	
	(c) No student in our school has visited North Dakota.

	(d) There is a student in our school who has not visited North Dakota.

	(e) Not all students in our school have visited North Dakota.

	(f) All students in our school have not visited North Dakota.
]

#hw("9")[
	Let $P(x)$ be the statement "$x$ can speak Russian" and let $Q(x)$ be the statement "$x$ knows the computer language C++." Express each of these sentences in terms of $P(x)$, $Q(x)$, quantifiers, and logical connectives. The domain for quantifiers consists of all students at your school.

	(b) There is a student at your school who can speak Russian but who doesn’t know C++.

	(d) No student at your school can speak Russian or knows C++.
][

	(b) $exists x (P(x) and not Q(x))$

	(d) $forall x not (P(x) or Q(x))$
]

#hw("16")[
	Determine the truth value of each of these statements if the domain of each variable consists of all real numbers.

	(a) $exists x (x^2 = 2)$
	
	(b) $exists x (x^2 = -1)$

	(c) $forall x (x^2 + 2 >= 1)$

	(d) $forall x (x^2 != x)$
][

	(a) True, since when $x=sqrt(2)$, $x^2=2$ is true.
	
	(b) False, since $x^2>=0$ holds forall $x in RR$.

	(c) True, since $x^2+2>=2$ holds forall $x in RR$.

	(d) False, since when $x=1$, $x^2!=x$ is false.
]

#hw("20(e)")[
	Suppose that the domain of the propositional function $P(x)$ consists of −5, −3, −1, 1, 3, and 5. Express these statements without using quantifiers, instead using only negations, disjunctions, and conjunctions.

	(e) $∃x(¬P(x)) ∧ ∀x((x < 0) → P(x))$
][
	The part of statement $exists x (not P(x))$ can be expressed as:

	$ not P(-5) or not P(-3) or not P(-1) or not P(1) or not P(3) or not P(5) $

	And the another part $forall x ((x<0) -> P(x))$ can be expressed as:

	$ P(-5) and P(-3) and P(-1) $

	So the original statement can be expressed as:

	$ (not P(-5) or not P(-3) or not P(-1) or not P(1) or not P(3) or not P(5)) and (P(-5) and P(-3) and P(-1)) $
]

#hw("24")[
	Translate in two ways each of these statements into logical expressions using predicates, quantifiers, and logical connectives. First, let the domain consist of the students in your class and second, let it consist of all people.

	(b)	Somebody in your class has seen a foreign movie.

	(d)	All students in your class can solve quadratic equations.
][
	Let $S(x)$ denotes "$x$ is in your class", $M(x)$ denotes "$x$ has seen a foreign movie" and $Q(x)$ denotes "$x$ can solve quadratic equations".

	#table(
		columns: (5em, 1fr, 1fr),
		[(b)], $exists x M(x)$, $exists x(S(x) and M(x))$,
		[(d)], $forall x Q(x)$, $forall x(not S(x) or Q(x))$,
	)
]

#hw("34")[
	Express the negation of these propositions using quantifiers, and then express the negation in English.
	
	(a)	Some drivers do not obey the speed limit.
	
	(b)	All Swedish movies are serious.
	
	(c)	No one can keep a secret.
	
	(d)	There is someone in this class who does not have a good attitude.
][

	(a) Let the domain consist of all drivers, and let $P(x)$ denotes "$x$ obeys the speed limit". And the given statement can be expressed as
	$ exists x not P(x). $
	And the negation of this proposition is
	$ not (exists x not P(x)), $
	which is equivalent to
	$ forall x P(x) $
	In English, we can say "All drivers obey the speed limit."

	(b) Let the domain consist of all Swedish movies, and let $P(x)$ denotes "$x$ is serious". The given statement can be expressed as
	$ forall x P(x). $
	And the negation of this proposition is
	$ not(forall x P(x)) equiv exists x not P(x) $
	In English, it can be expressed as "There is a Swedish movie that is not serious."

	(c) Let the domain consist of all people, and let $P(x)$ denotes "$x$ can keep a secret". The given statement can be expressed as
	$ forall x not P(x) $
	And the negation of this proposition is
	$ not (forall x not P(x)) equiv exists x P(x) $
	In English, it can be expressed as "There is someone who can keep a secret."

	(d) Let the domain consist of all students in this class, and let $P(x)$ denotes "$x$ has a good attitude". The given statement can be expressed as
	$ exists x not P(x) $
	And the negation of this proposition is
	$ not (exists x not P(x)) equiv forall x P(x) $
	In English, it can be expressed as "All students in this class have a good attitude."
]

#hw("53")[
	Show that $∃x P(x) ∧ ∃x Q(x)$ and $∃x(P(x) ∧ Q(x))$ are not logically equivalent.
][
	Let the domain consist of all positive integers, and let $P(x)$ denotes "$x$ is even" and $Q(x)$ denotes "$x$ is odd".
	
	Obviously, proposition $exists x P(x)$ and $exists x Q(x)$ are all true, but there isn't a number can be even or odd at the same time, so the proposition $exists x(P(x) and Q(x))$ is false. Therefore, the two propositions are not logically equivalent.
]

#hw("64")[
	Let $P(x)$, $Q(x)$, $R(x)$, and $S(x)$ be the statements "$x$ is a duck," "$x$ is one of my poultry," "$x$ is an officer," and "$x$ is willing to waltz," respectively. Express each of these statements using quantifiers; logical connectives; and $P(x)$, $Q(x)$, $R(x)$, and $S(x)$.
	
	(a) No ducks are willing to waltz.
	
	(b) No officers ever decline to waltz.
	
	(c) All my poultry are ducks.
	
	(d) My poultry are not officers.
	
	(e)\* Does (d) follow from (a), (b), and (c)? If not, is there a correct conclusion?
][

	(a) $forall x (P(x) -> not S(x))$

	(b) $forall x (R(x) -> S(x))$

	(c) $forall x (Q(x) -> P(x))$

	(d) $forall x (Q(x) -> not R(x))$

	(e) No. The correct conclusion is $forall x ((Q(x) -> not S(x)) and (R(x) -> S(x)))$.
]


= 1.5 Nested Quantifiers

#hw("6")[
	Let $C(x, y)$ mean that student $x$ is enrolled in class $y$, where the domain for $x$ consists of all students in your school and the domain for $y$ consists of all classes being given at your school. Express each of these statements by a simple English sentence.

	(e) $∃x∃y∀z((x!=y) and (C(x, z) -> C(y, z)))$

	(f) $∃x∃y∀z((x!=y) and (C(x, z) <-> C(y, z)))$
][

	(e) There are two students A and B in my school that B are enrolled in all classes that A is enrolled in.

	(f) There are two students in my school who are enrolled in exactly the same classes.
]

#hw("12")[
	Let $I(x)$ be the statement "$x$ has an Internet connection" and $C(x, y)$ be the statement "$x$ and $y$ have chatted over the Internet," where the domain for the variables $x$ and $y$ consists of all students in your class. Use quantifiers to express each of these statements.

	(d) No one in the class has chatted with Bob.

	(h) Exactly one student in your class has an Internet connection.

	(k) Someone in your class has an Internet connection but has not chatted with anyone else in your class.

	(n) There are at least two students in your class who have not chatted with the same person in your class.
][

	(d) $forall x not C(x, "Bob")$

	(h) $exists x (I(x) and forall y (y!=x -> not I(x)))$

	(k) $exists x (I(x) and forall y (y!=x -> not C(x,y)))$

	(n) $exists x exists y forall z (x!=y and not (C(x,z) <-> C(y,z)))$
]

#hw("14")[
	Use quantifiers and predicates with more than one variable to express these statements.
	
	(c) Some student in this class has visited Alaska but has not visited Hawaii.
	
	(d) All students in this class have learned at least one programming language.
	
	(e) There is a student in this class who has taken every course offered by one of the departments in this school.
	
	(f) Some student in this class grew up in the same town as exactly one other student in this class.
][

	(c) Let $P(x,y)$ denotes "student $x$ has visited," where the domain for the variable $x$ consists the students in this class and the domain for $y$ consists all the cities. Then, the given statement can be expressed as
	$ exists x (P(x, "Alaska") and not P(x, "Hawaii")) $#fake_par
	
	(d) Let $P(x,y)$ denotes "student $x$ has learned programming language $y$", where the domain for $x$ consists the students in this class and the domain for $y$ consists all the programming languages. Then, the given statement can be expressed as
	$ forall x exists y P(x,y) $#fake_par

	(e) Let $P(x,y,z)$ denotes "student $x$ has taken course $y$ offered by department $z$", where the domain for $x$ consists the students in this class, the domain for $y$ consists all the courses, and the domain for $z$ consists all the departments. Then, the given statement can be expressed as
	$ exists x forall y exists z P(x,y,z) $#fake_par

	(f) Let $P(x,y)$ denotes "student $x$ in this class grew up in the town $y$", where the domain for $x$ consists all students, and the domain for $y$ consists all towns. Then, the given statement can be expressed as
	$ exists x exists y forall z ((x!=y and y!=z and x != z)-> (exists t P(x,t) and P(y,t) and not P(z,t))) $
]

#hw("24")[
	Translate each of these nested quantifications into an English statement that expresses a mathematical fact. The domain in each case consists of all real numbers.
	
	(a) $∃x∀y(x + y = y)$
	
	(d) $∀x∀y((x!=0) ∧ (y!=0) ↔ (x y!=0))$
][

	(a) There is a real number $x$ that for all real number $y$, the sum of $x$ and $y$ is $y$.

	(b) For any two non-zero real numbers $x$ and $y$, their product must not be zero.
]

#hw("32(d)")[
	Express the negations of this statement so that all negation symbols immediately precede predicates.
	$ ∀y∃x∃z(T(x, y, z) ∨ Q(x, y)) $
][
	The negation of given statement is
	$ not forall y exists x exists z (T(x,y,z) or Q(x,y)). $

	By applying De Morgan's laws, we can get
	$ exists y forall x forall z (not T(x,y,z) and not Q(x,y)) $

]

#hw("34")[
	Find a common domain for the variables $x$, $y$, and $z$ for which the statement $∀x∀y((x!=y) → ∀z((z = x) ∨ (z = y)))$ is true and another domain for which it is false.
][
	$
	&forall x forall y ((x != y) -> forall z ((z = x) or (z = y)))\
	equiv& forall x forall y ((x = y) or forall z ((z = x) or (z = y)))\
	equiv& forall x forall y forall z ((x = y) or (z = x) or (z = y))\
	$
	Therefore, any common domain that consists at most two elements will make this statement true since at least two variables chosen from the domain would be equal. Otherwise, for the domain that consists more than two elements, the statement will be false.
]

#hw("38")[
	Express the negations of these propositions using quantifiers, and in English.
	
	(b) There is a student in this class who has never seen a computer.
	
	(d) There is a student in this class who has been in at least one room of every building on campus.
][
	
	(b) Let $Q(x)$ be "student $x$ has seen a computer". Then the given proposition can be expressed using quantifiers as
	$ exists x not Q(x) $
	The negation of this proposition is
	$
	not exists x not Q(x)
	equiv forall x Q(x)
	$
	In English, it can be expressed as "All students in this class have seen a computer."

	(d) Let $P(x,y,z)$ be "student $x$ has been in room $y$ of building $z$", and let the domain for $x$ consists all students on campus. Then the given proposition can be expressed using quantifiers as
	$ exists x forall z exists y P(x,y,z) $
	The negation of this proposition is
	$
	not (exists x forall z exists y P(x,y,z))
	equiv forall x exists z forall y not P(x,y,z)
	$
	In English, it can be expressed as "There is a building that all student in this class have not been in at any room."
]

#hw("42")[
	Use quantifiers to express the distributive laws of multiplication over addition for real numbers.
][
	$ forall x forall y forall z ((x+y)z = x z + y z) $
	Here the domain consists all real numbers.
]
