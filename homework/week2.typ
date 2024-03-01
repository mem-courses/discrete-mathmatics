#import "../template.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	title: "Homework #2",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
 date: "February 27, 2024",
)

= 1.3 Propositional Equivalences

#hw("12(d)")[
	Show that the conditional statement is a tautology by using truth tables.
	$ [(p and q) or (p->r) or (q->r)] -> r $
][]

#hw("28")[
	Show that $(p->q) and (p->r)$ and $p->(q and r)$ are logically equivalent.
][]

#hw("34")[
	Show that $(p and q) or (not p and r) -> (q and r)$ is a tautology.
][]

#hw("45")[
	Find a compound proposition involving the propositional variables $p$, $q$, and $r$ that is true when exactly two of $p$, $q$, and $r$ are true and is false otherwise. [Hint: Form a disjunction of conjunctions. Include a conjunction for each combination of values for which the compound proposition is true. Each conjunction should include each of the three propositional variables or its negations.]
][]

#hw("55")[
	Find a compound proposition logically equivalent to $p -> q$ using only the logical operator $arrow.b$.
][]

#hw("63")[
	How many of the disjunctions $p ∨ ¬q ∨ s$, $¬p ∨ ¬r ∨ s$, $¬p ∨ ¬r ∨ ¬s$, $¬p ∨ q ∨ ¬s$, $q ∨ r ∨ ¬s$, $q ∨ ¬r ∨ ¬s$, $¬p ∨ ¬q ∨ ¬s$, $p ∨ r ∨ s$, and $p ∨ r ∨¬s$ can be made simultaneously true by an assignment of truth values to $p$, $q$, $r$, and $s$?
][]

= 1.4 Predicates and Quantifiers

#hw("16")[
	Determine the truth value of each of these statements if the domain of each variable consists of all real numbers.

	(a) $exists x (x^2 = 2)$
	
	(b) $exists x (x^2 = -1)$

	(c) $forall x (x^2 + 2 >= 1)$

	(d) $forall x (x^2 != x)$
][]

#hw("24")[
	Translate in two ways each of these statements into logical expressions using predicates, quantifiers, and logical connectives. First, let the domain consist of the students in your class and second, let it consist of all people.

	(a)	Everyone in your class has a cellular phone.

	(b)	Somebody in your class has seen a foreign movie.

	(c)	There is a person in your class who cannot swim.

	(d)	All students in your class can solve quadratic equa-tions.

	(e)	Some student in your class does not want to be rich.
][]

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
	Let P(x), Q(x), R(x), and S(x) be the statements “x is a duck,” “x is one of my poultry,” “x is an officer,” and “x is willing to waltz,” respectively. Express each of these statements using quantifiers; logical connectives; and P(x), Q(x), R(x), and S(x).
	
	(a) No ducks are willing to waltz.
	
	(b) No oﬃcers ever decline to waltz.
	
	(c) All my poultry are ducks.
	
	(d) My poultry are not oﬃcers.
	
	(e)\* Does (d) follow from (a), (b), and (c)? If not, is there a correct conclusion?
][]