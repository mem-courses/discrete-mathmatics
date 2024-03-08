#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #2: Propositional Logic",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "3230104585"
	),),
	semester: "Spring-Summer 2024",
	date: "March 2, 2024",
)

= 1.4 Predicates and Quantifiers

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

#hw("24")[
	Translate in two ways each of these statements into logical expressions using predicates, quantifiers, and logical connectives. First, let the domain consist of the students in your class and second, let it consist of all people.

	(a)	Everyone in your class has a cellular phone.

	(b)	Somebody in your class has seen a foreign movie.

	(c)	There is a person in your class who cannot swim.

	(d)	All students in your class can solve quadratic equa-tions.

	(e)	Some student in your class does not want to be rich.
][
	Let $S(x)$ denotes "$x$ is in your class", $P(x)$ denotes "$x$ has a cellular phone", $M(x)$ denotes "$x$ has seen a foreign movie".

	#table(

		align: center,
		columns: (2em, 1fr, 1fr),
		stroke: 0.5pt,
		[(a)], [$forall x (S(x) -> P(x))$], [$(forall x S(x)) -> P(x)$],
	)
]

#hw("34")[
	Express the negation of these propositions using quantifiers, and then express the negation in English.
	
	(a)	Some drivers do not obey the speed limit.
	
	(b)	All Swedish movies are serious.
	
	(c)	No one can keep a secret.
	
	(d)	There is someone in this class who does not have a good attitude.
][]

#hw("53")[
	Show that $∃x P(x) ∧ ∃x Q(x)$ and $∃x(P(x) ∧ Q(x))$ are not logically equivalent.
][]

#hw("64")[
	Let $P(x)$, $Q(x)$, $R(x)$, and $S(x)$ be the statements “$x$ is a duck,” “$x$ is one of my poultry,” “$x$ is an officer,” and “$x$ is willing to waltz,” respectively. Express each of these statements using quantifiers; logical connectives; and $P(x)$, $Q(x)$, $R(x)$, and $S(x)$.
	
	(a) No ducks are willing to waltz.
	
	(b) No officers ever decline to waltz.
	
	(c) All my poultry are ducks.
	
	(d) My poultry are not officers.
	
	(e)\* Does (d) follow from (a), (b), and (c)? If not, is there a correct conclusion?
][]


= 1.5 Nested Quantifiers

#hw("7")[
	Let $T(x, y)$ mean that student $x$ likes cuisine $y$, where the domain for $x$ consists of all students at your school and the domain for $y$ consists of all cuisines. Express each of these statements by a simple English sentence.

	(b) $∃x T(x, "Korean") ∧ ∀x T(x, "Mexican")$

	(d) $∀x∀z∃y((x	z) → ¬(T(x, y) ∧ T(z, y)))$

	(f) $∀x∀z∃y(T(x, y) ↔ T(z, y))$
][

]

#hw("12")[
	Let $I(x)$ be the statement “$x$ has an Internet connection” and $C(x, y)$ be the statement “$x$ and $y$ have chatted over the Internet,” where the domain for the variables $x$ and $y$ consists of all students in your class. Use quantifiers to express each of these statements.

	(d) No one in the class has chatted with Bob.

	(h) Exactly one student in your class has an Internet connection.

	(k) Someone in your class has an Internet connection but has not chatted with anyone else in your class.
	
	(n) There are at least two students in your class who have not chatted with the same person in your class.
][
]

#hw("19")[
	Express each of these statements using mathematical and logical operators, predicates, and quantifiers, where the domain consists of all integers.
	
	(a) The sum of two negative integers is negative.
	
	(b) The difference of two positive integers is not neces- sarily positive.
	
	(c) The sum of the squares of two integers is greater than or equal to the square of their sum.
	
	(d) The absolute value of the product of two integers is the product of their absolute values.
][]

#hw("33")[
	Rewrite each of these statements so that negations appear only within predicates (that is, so that no negation is outside a quantifier or an expression involving logical connectives).

	(a) $¬∀x∀y P(x, y)$

	(b) $¬∀y∃x P(x, y)$

	(c) $¬∀y∀x(P(x, y) ∨ Q(x, y))$

	(d) $¬(∃x∃y¬P(x, y) ∧ ∀x∀y Q(x, y))$

	(e) $¬∀x(∃y∀z P(x, y, z) ∧ ∃z∀y P(x, y, z))$
][]

#hw("38")[
	Express the negations of these propositions using quantifiers, and in English.
	
	(b) There is a student in this class who has never seen a computer.
	
	(d) There is a student in this class who has been in at least one room of every building on campus.
][]

#hw("48")[
	Show that $∀x P(x) ∨ ∀x Q(x)$ and $∀x∀y(P(x) ∨ Q(y))$, where all quantifiers have the same nonempty domain, are logically equivalent. (The new variable y is used to combine the quantifications correctly.)
][]