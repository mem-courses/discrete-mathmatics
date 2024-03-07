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

= 1.3 Propositional Equivalences

#hw("12(d)")[
	Show that the conditional statement is a tautology by using truth tables.
	$ [(p or q) and (p->r) and (q->r)] -> r $
][
	The truth table is as follows:
	#let T = [T]
	#let F = [F]
	#table(
		columns: (1fr, 1fr, 1fr, 2fr, 2fr, 2fr, 5fr),
		inset: 5pt,
		align: horizon + center,
		$r$, $p$, $q$, $p->r$, $q->r$, $p or q$, $(p or q) and (p->r) and (q->r)$,
		T, T, T, T, T, T, T,
		T, T, F, T, T, T, T,
		T, F, T, T, T, T, T,
		T, F, F, T, T, F, F,
		F, T, T, F, F, T, F,
		F, T, F, F, T, T, F,
		F, F, T, T, F, T, F,
		F, F, F, T, T, F, F,
	)

	As the truth table shows, the compound proposition $[(p or q) and (p->r) and (q->r)] -> r$ always holds, so it is a tautology.
]

#hw("28")[
	Show that $(p->q) and (p->r)$ and $p->(q and r)$ are logically equivalent.
][
	$
	(p->q) and (p->r)
	&equiv (not p or q) and (not p or r)\
	&equiv not p or (q and r)\
	&equiv p->(q and r)
	$
	Overall, logical propositions $(p->q) and (p->r)$ and $p->(q and r)$ are logically equivalent.
]

#hw("34")[
	Show that $(p or q) and (not p or r) -> (q or r)$ is a tautology.
][
	$
	(p or q) and (not p or r) -> (q or r)
	&equiv not (p or q) or not (not p or r) or (q or r)\
	&equiv (not p and not q) or (p and not r) or q or r\
	&equiv ((not p or p) and (not q or p) and (not p or not r) and (not q or not r)) or q or r\
	&equiv (TT and (not q or p) and (not p or not r) and (not q or not r)) or q or r\
	&equiv ((not q or p) and (not p or not r) and (not q or not r)) or q or r\
	&equiv (not q or p or q or r) and (not p or not r or q or r) and (not q or not r or q or r)\
	&equiv TT and TT and TT\
	&equiv TT
	$
	So this compound proposition is a tautology.
]

#hw("45")[
	Find a compound proposition *involving(包含)* the propositional variables $p$, $q$, and $r$ that is true when exactly two of $p$, $q$, and $r$ are true and is false otherwise.
	
	Hint: Form a disjunction of conjunctions. Include a conjunction for each combination of values for which the compound proposition is true. Each conjunction should include each of the three propositional variables or its negations.
][
	Here my answer is:
	$
	not (p and q and r) and [(p and q) or (p and r) or (q and r)]
	$
]

#let NAND = math.italic("NAND")
#let NOR = math.italic("NOR")

\ We now present a group of exercises that involve the logical operators $NAND$ and $NOR$. The proposition $p NAND q$ is true when either $p$ or $q$, or both, are false; and it is false when both $p$ and $q$ are true. The proposition $p NOR q$ is true when both $p$ and $q$ are false, and it is false otherwise. The propositions $p NAND q$ and $p NOR q$ are denoted by $p|q$ and $p arrow.b q$, respectively. (The operators and $arrow.b$ are called the Sheffer stroke and the Peirce arrow after H. M. Sheﬀer and C. S. Peirce, respectively.)

#hw("55")[
	Find a compound proposition logically equivalent to $p -> q$ using only the logical operator $arrow.b$.
][
	Since $p equiv p or p$, we have $not p equiv p arrow.b p$. So there is:
	$
	p->q
	&equiv not p or q\
	&equiv not ((p arrow.b p) arrow.b q)\
	&equiv ((p arrow.b p) arrow.b q) arrow.b ((p arrow.b p) arrow.b q)
	$
]

#hw("63")[
	How many of the disjunctions $p or not q or s$, $not p or not r or s$, $not p or not r or not s$, $not p or q or not s$, $q or r or not s$, $q or not r or not s$, $not p or not q or not s$, $p or r or s$, and $p or r or not s$ can be made *simultaneously(同时地)* true by an assignment of truth values to $p$, $q$, $r$, and $s$?
][
	#let T = [T]
	#let F = [F]

	Let's discuss in cases:

	- #[
		If $s$ is true, there are three propositions in the given statement always hold true. Only $not p or not r$, $not p or q$, $q or r$, $q or not r$, $not p or not q$, and $p or r$ need to be considered. We can list a truth table:
	
		#table(
			columns: (1fr, 1fr, 1fr, 2fr, 2fr, 2fr, 2fr, 2fr, 2fr),
			inset: 5pt,
			align: horizon + center,
			$p$, $q$, $r$, $not p or not r$, $not p or q$, $q or r$, $q or not r$, $not p or not q$, $p or r$,
			T, T, T, F, T, T, T, F, T,
			T, T, F, T, T, T, T, F, T,
			T, F, T, F, F, T, F, T, T,
			T, F, F, T, F, F, T, T, T,
			F, T, T, T, F, T, T, T, T,
			F, T, F, T, F, T, T, T, F,
			F, F, T, T, T, T, F, T, T,
			F, F, F, T, T, F, T, T, F,
		)

		From the truth table, we can observe that at most 5 logical propositions can be true at the same time. So there are $8=3+5$ logical propositions hold true in total when $p,q,s$ is true and $r$ is false.
	]

	- #[
		If $s$ is false, there are six propositions in the given statement always hold true. Only $p or not q$, $not p or not r$ and $p or r$ need to be considered.
	]
]

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