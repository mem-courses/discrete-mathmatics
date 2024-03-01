#import "../template.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
 title: "Homework #1",
 authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
 date: "February 27, 2024",
)

#let TT = math.bold(math.upright("True"))
#let FF = math.bold(math.upright("False"))

= 1.1 Propositional Logic

#hw("10")[
	Let $p$ and $q$ be the propositions

	$p$: I bought a lottery ticket this week.

	$q$: I won the million dollar jackpot.

	Express each of these propositions as an English sentence.

	(f) $not p -> not q$

	(g) $not p and not q$

	(h) $not p or (p and q)$
][
	These propositions can be expressed as follows：

	(f) if I didn't buy a lottery ticket this week, then I will not win the million dollar jackpot.

	(g) I didn't buy a lottery ticket this week and I didn't win the million dollar jackpot.

	(h) I didn't buy a lottery ticket this week or I bought a lottery ticket this week but won the million dollar jackpot.
]



#hw("16")[
	let $p$, $q$, and $r$ be the propositions

	$p$: You get an A on the final exam.

	$q$: You do every exercise in this book.

	$r$: You get an A in this class.

	Write these propositions using $p$, $q$, and $r$ and logical connectives (including negations).

	(a) You get an A in this class, but you do not do every exercise in this book.

	(b) You get an A on the final, you do every exercise in this book, and you get an A in this class.

	(c) To get an A in this class, it is necessary for you to get an A on the final.
	
	(d) You get an A on the final, but you don’t do every exercise in this book; *nevertheless(尽管)*, you get an A in this class.

	(e) Getting an A on the final and doing every exercise in this book is *sufficient(足够的；充分的)* for getting an A in this class.

	(f) You will get an A in this class if and only if you either do every exercise in this book or you get an A on the final.
][
	These propositions can be writen as follows:

	(a) $r and not q$

	(b) $p and q and r$

	(c) $r -> p$

	(d) $p and not q and r$

	(e) $(p and q) -> r$

	(f) $r <-> (p or q)$
]




#hw("18")[
	Determine whether these biconditionals are true or false.

	(a) 2 + 2 = 4 if and only if 1 + 1 = 2.

	(b) 1 + 1 = 2 if and only if 2 + 3 = 4.

	(c) 1 + 1 = 3 if and only if monkeys can fly.

	(d) $0 > 1$ if and only if $2 > 1$.
][
	The answer is TFTF.
]


#hw("39(c)")[
	Construct a truth table for each of this compound proposition.

	$ (p -> q) or (not p -> r) $
][
	The truth table is as follows:

	#let T = [T]
	#let F = [F]
	#table(
		columns: (1fr, 1fr, 1fr, 2fr, 2fr, 3fr),
		inset: 5pt,
		align: horizon + center,
		$p$, $q$, $r$, $p -> q$, $not p -> r$, $(p -> q) or (not p -> r)$,
		T, T, T, T, T, T,
		T, T, F, T, T, T,
		T, F, T, F, T, T,
		T, F, F, F, T, T,
		F, T, T, T, T, T,
		F, T, F, T, F, T,
		F, F, T, T, T, T,
		F, F, F, T, F, T,
	)
]

#hw("46")[
	What is the value of $x$ after each of these statements is encountered in a computer program, if $x = 1$ before the statement is reached?

	(c) if ($2x+3=5$) AND ($3x+4=7$) then $x:=x+1$

	(d) if ($x+1=2$) XOR ($x+2=3$) then $x:=x+1$
][
	After the problem terminated, the $x$ will be:

	(c) $2$

	(d) $1$
]

= 1.2 Application of Propositional Logic

#hw("6")[
	You can upgrade your operating system only if you have a 32-bit processor running at 1 GHz or faster, at least 1 GB RAM, and 16 GB free hard disk space, or a 64-bit processor running at 2 GHz or faster, at least 2 GB RAM, and at least 32 GB free hard disk space.
	
	Express your answer in terms of $u$: “You can upgrade your operating system,” $b_32$: “You have a 32-bit processor,” $b_64$: “You have a 64-bit processor,” $g_1$: “Your processor runs at 1 GHz or faster,” $g_2$: “Your processor runs at 2 GHz or faster,” $r_1$: “Your processor has at least 1 GB RAM,” $r_2$: “Your processor has at least 2 GB RAM,” $h_16$: “You have at least 16 GB free hard disk space,” and $h_32$: “You have at least 32 GB free hard disk space.”
][
	The expression is:
	$
	u <-> ((b_32 and g_1 and r_1 and h_16) or (b_64 and g_2 and r_2 and h_32))
	$
]

#hw("9")[
	Are these system specifications consistent?
	
	“The system is in multiuser state if and only if it is operating normally. If the system is operating normally, the kernel is functioning. The kernel is not functioning or the system is in interrupt mode. If the system is not in multiuser state, then it is in interrupt mode. The system is not in interrupt mode.”
][
	Assume that $p$: "The system is in multiuser state," $q$: "The system if operating normally," $r$: "The kernel is functioning," $s$: "The system is in interrupt mode." And then we can list the following logical equivalent:
	$
	(p <-> q)
	and (q -> r)
	and (not r or s)
	and (not p -> s)
	and not s &equiv TT
	$
	So each part of this conjunction is true. Then we can obtain
	$
	s equiv FF
	$
	So the logical value of $not p$ shoule be $FF$, which means
	$
	p equiv TT
	$
	and the logical value of $not s$ should be $TT$, which means
	$
	s equiv FF
	$
]

Exercises 28–35 relate to inhabitants of an island on which there are three kinds of people: knights who always tell the truth, knaves who always lie, and spies (called normals by Smullyan [Sm78]) who can either lie or tell the truth. You encounter three people, A, B, and C. You know one of these people is a knight, one is a knave, and one is a spy. Each of the three people knows the type of person each of other two is. For each of these situations, if possible, determine whether there is a unique solution and determine who the knave, knight, and spy are. When there is no unique solution, list all possible solutions or state that there are no solutions.

#hw("28")[
	A says “C is the knave,” B says “A is the knight,” and C says “I am the spy.”
][
	Make the following assumptions: 

	- $a_1$: "A is knight," $a_2$: "A is knave."
	- $b_1$: "B is knight," $b_2$: "B is knave."
	- $c_1$: "C is knight," $c_2$: "C is knave."

	Since a person can only have one profession, we can get this logical equivalent:

	$
	a_1 and a_2 equiv b_1 and b_2 equiv c_1 and c_2 equiv FF
	$

	and since one profession is only owned by one person, we can get the following logical equivalents:
	
	$
	a_1 -> not b_1 and not c_1
	$

	Through their statements we can get the following logical equivalents:
	
	$
	a_1 -> c_2\
	a_2 -> not c_2\
	b_1 -> a_1\
	b_2 -> not a_1\
	c_1 -> not c_1 and not c_2\
	c_2 -> not (not c_1 and not c_2)\
	$
]

#hw("39")[
	A detective has interviewed four witnesses to a crime. From the stories of the witnesses the detective has concluded that if the butler is telling the truth then so is the cook; the cook and the gardener cannot both be telling the truth; the gardener and the handyman are not both lying; and if the handyman is telling the truth then the cook is lying. For each of the four witnesses, can the detective determine whether that person is telling the truth or lying? Explain your reasoning.
][
	
]

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