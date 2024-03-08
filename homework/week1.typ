#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #1: Propositional Logic",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "3230104585"
	),),
	semester: "Spring-Summer 2024",
	date: "February 27, 2024",
)

#let T = [T]
#let F = [F]

= 1.1 Propositional Logic

#hw("2")[
	Which of these are propositions? What are the truth values of those that are propositions?
	
	(a) Do not pass go.
	
	(b) What time is it?
	
	(d) $4 + x = 5$.
	
	(e) The moon is made of green cheese.
	
	(f) $2^n >= 100$.
][
  (e) and (f) are propositions, and the truth values of them are false and true.
]

#hw("10")[
	Let $p$ and $q$ be the propositions

	$p$: I bought a lottery ticket this week.

	$q$: I won the million dollar jackpot.

	Express each of these propositions as an English sentence.

	(e) $p<->q$

	(f) $not p -> not q$

	(g) $not p and not q$

	(h) $not p or (p and q)$
][
	These propositions can be expressed as follows：

	(e) I brought a lottery ticket this week is and only if I won the million dollar jackpot.

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
	These propositions can be written as follows:

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
	The value of these four biconditionals is TFTF.
]

#hw("20(c)")[
	Determine whether each of these conditional statements is true or false.

	(c) If $1 + 1 = 2$, then dogs can fly.
][
	The proposition $1+1=2$ is true, but the proposition "dogs can fly" is false. So this conditional statement is false.
]

#hw("24")[
	Write each of these statements in the form "if p, then q" in English. [Hint: Refer to the list of common ways to express conditional statements provided in this section.]
	
	(a) It is necessary to wash the boss’s car to get promoted.
	
	(b) Winds from the south imply a spring thaw.
	
	(c) A *sufficient(充分的)* condition for the warranty to be good is that you bought the computer less than a year ago.
	
	(d) Willy gets caught whenever he cheats.
	
	(e) You can access the website only if you pay a subscription fee.
	
	(f) Getting elected *follows from(由……引起)* knowing the right people.
	
	(g) Carol gets seasick whenever she is on a boat.
][
	(a) If someone washes the boss's car, then he is able to get promoted.

	(b) If there are winds from the south, then the spring is going to be thaw.

	(c) If you bought the computer more than a year ago, then your warranty is not good.

	(d) If Willy cheats, then he will be caught.

	(e) If you pay a subscription fee, then you can access the website.

	(f) If someone gets elected, then he or she has known the right people.

	(g) If Carol is on a boat, then she will get seasick.
]

#hw("30")[
	State the converse, contrapositive, and inverse of each of these conditional statements.
	
	(a) If it snows tonight, then I will stay at home.
	
	(b) I go to the beach whenever it is a sunny summer day.
	
	(c) When I stay up late, it is necessary that I sleep until noon.
][
	For the statement (a):

	- converse: If I stay at home, then it will snow tonight.
	- inverse: If it doesn't snow tonight, then I will not stay at home.
	- contrapositive: If I don't stay at home, then it will not snow tonight.

	The the statement (b) can be represent as "If it is a sunny summer day, then I will go to beach", and its

	- converse: If I go to beach, then it will be a sunny summer day.
	- inverse: If it isn't a sunny summer day, then I will not go to beach.
	- contrapositive: If I don't go to beach, then it will not be a sunny summer day.

	The the statement (c) can be represent as "If I stay up late, then I will sleep until noon."

	- converse: If I sleep until noon, then I stayed up late (last night).
	- inverse: If I don't stay up late, then I will not sleep until noon. 
	- contrapositive: If I don't sleep until noon, then I didn't stay up late (last night).
]

#hw("34(f)")[
	Construct a truth table for each of the compound propositions $(p ↔ q) ⊕ (p ↔ ¬q)$.
][
	The truth table is as follows:

	#table(
		columns: (1fr, 1fr, 2fr, 2fr, 4fr),
		align: horizon + center,
		inset: 5pt,
		stroke: 0.5pt,
		$p$, $q$, $p<->q$, $p<->not q$, $(p ↔ q) ⊕ (p ↔ ¬q)$,
		T, T, T, F, T, 
		T, F, F, T, T, 
		F, T, F, T, T, 
		F, F, T, F, T, 
	)
]

#hw("39(c)")[
	Construct a truth table for each of this compound proposition:

	$ (p -> q) or (not p -> r) $
][
	The truth table is as follows:

	#table(
		columns: (1fr, 1fr, 1fr, 2fr, 2fr, 3fr),
		inset: 5pt,
		stroke: 0.5pt,
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
	After the program terminated, the $x$ will be:

	(c) $2$

	(d) $1$
]

\

*Fuzzy logic* is used in artificial intelligence. In fuzzy logic, a proposition has a truth value that is a number between 0 and 1, inclusive. A proposition with a truth value of 0 is false and one with a truth value of 1 is true. Truth values that are between 0 and 1 indicate varying degrees of truth. For instance, the truth value 0.8 can be assigned to the statement “Fred is happy,” because Fred is happy most of the time, and the truth value 0.4 can be assigned to the statement “John is happy,” because John is happy slightly less than half the time. Use these truth values to solve Exercises 49–51.

#hw("50")[
	The truth value of the conjunction of two propositions in fuzzy logic is the minimum of the truth values of the two propositions. What are the truth values of the statements
	
	"Fred and John are happy" and "Neither Fred nor John is happy"?
][
	Let $x$ denotes the truth value of "Fred is happy", and $y$ denotes the truth value of "John is happy". So the statement "Fred and John are happy" can be represent as
	$
	x and y,
	$
	so its truth value is $min(x,y) = 0.4$. And the statement "Neither Fred nor John is happy" can be represent as
	$
	not x and not y, 
	$
	so its truth value is $min(1-x,1-y) = 0.2$.
]

#hw("52")[
	 Is the assertion "This statement is false" a proposition?
][
	Let's assume it is a proposition. If it holds true, then "this statement is false" is false. So this is a paradox and cannot be referred to as a proposition.
]

= 1.2 Application of Propositional Logic

#hw("6")[
	You can upgrade your operating system only if you have a 32-bit processor running at 1 GHz or faster, at least 1 GB RAM, and 16 GB free hard disk space, or a 64-bit processor running at 2 GHz or faster, at least 2 GB RAM, and at least 32 GB free hard disk space.

	Express your answer in terms of $u$: "You can upgrade your operating system," $b_32$: "You have a 32-bit processor," $b_64$: "You have a 64-bit processor," $g_1$: "Your processor runs at 1 GHz or faster," $g_2$: "Your processor runs at 2 GHz or faster," $r_1$: "Your processor has at least 1 GB RAM," $r_2$: "Your processor has at least 2 GB RAM," $h_16$: "You have at least 16 GB free hard disk space," and $h_32$: "You have at least 32 GB free hard disk space."
][
	The proposition can be expressed as follows:
	$
	u -> (b_32 and g_1 and r_1 and h_16) or (b_64 and g_2 and r_2 and h_32)
	$
]

#hw("9")[
	Are these system specifications consistent?

	"The system is in multiuser state if and only if it is operating normally. If the system is operating normally, the kernel is functioning. The kernel is not functioning or the system is in interrupt mode. If the system is not in multiuser state, then it is in interrupt mode. The system is not in interrupt mode."
][
	Let's assume these logical variables to represent original sentence parts:

	- $p$ denotes "The system is in multiuser state,"
	- $q$ denotes "The system if operating normally,"
	- $r$ denotes "The kernel is functioning,"
	- $s$ denotes "The system is in interrupt mode."

	Then, the specifications can be written as a proposition:
	$
	(p <-> q)
	and (q -> r)
	and (not r or s)
	and (not p -> s)
	and not s 
	$

	As this proposition holds true, each part of this proposition should also be true. So we soon obtain that $s$ is false. And since the implication $not p -> s$ holds, $p$ should be true. 

	Next, notice that $not r or s equiv not r or FF equiv not r equiv TT$, so $r$ is false. And also, $q$ is false. After that, based on $p <-> q$ holding true, we can infer that $p$ shoule be false, which is a contradiction. So we can conclude that the system specifications are not consistent.
]

\ Exercises 28–35 relate to inhabitants of an island on which there are three kinds of people: knights who always tell the truth, knaves who always lie, and spies (called normals by Smullyan [Sm78]) who can either lie or tell the truth. You encounter three people, A, B, and C. You know one of these people is a knight, one is a knave, and one is a spy. Each of the three people knows the type of person each of other two is. For each of these situations, if possible, determine whether there is a unique solution and determine who the knave, knight, and spy are. When there is no *unique(唯一的)* solution, list all possible solutions or state that there are no solutions.

#hw("28")[
	$A$ says "$C$ is the knave," $B$ says "$A$ is the knight," and $C$ says "I am the spy."
][
	Let's make these assumptions: 

	- $a_1$ denotes "$A$ is knight," and $a_2$ denotes "$A$ is knave;"
	- $b_1$ denotes "$B$ is knight," and $b_2$ denotes "$B$ is knave;"
	- $c_1$ denotes "$C$ is knight," and $c_2$ denotes "$C$ is knave."

	Then, we can translate their statements to these logical propositions:

	$
	a_1 -> c_2\
	a_2 -> not c_2\
	b_1 -> a_1\
	b_2 -> not a_1\
	c_1 -> not c_1 and not c_2\
	c_2 -> not (not c_1 and not c_2)\
	$

	Regarding the last two propositions, we can perform some simple *derivations(推导)*:

	$
	not c_1 or (not c_1 and not c_2)
	&equiv (not c_1 or not c_1) and (not c_1 or not c_2)\
	&equiv not c_1 and (not c_1 or not c_2)\
	&equiv not c_1\
	&equiv TT
	$

	$
	not c_2 or not (not c_1 and not c_2)
	&equiv not c_2 or c_1 or c_2\
	&equiv TT
	$

	So we obtain that $c_1$ is false. Let's discuss the cases:

	- If $c_2$ is true, which means $C$ is a knave. We can infer that $a_2$ must be false, and we need to discuss the cases again:
		- If $a_1$ is true, which means $A$ is a knight. So $B$ could only be a spy, which is valid.
		- If $a_1$ is false, which means $A$ is a spy. So $B$ could only be a knight. In this case, we obtain that $b_1$ is true, and so that $a_1$ is also true, meaning both $A$ and $B$ are knights, which is a contradiction.
	- If $c_2$ is false, which means $C$ is a spy. We can infer that $a_1$ must be false. Similarly, we proceed by discussing different cases:
		- If $a_2$ is true, which means $A$ is a knave. Then $B$ could only be a knight, which is a contradiction, as we discussed before.
		- If $a_2$ is false, which means $A$ is a spy. But we have just assumed that $C$ is a spy. Since there is only one spy,  so this situation is invalid.

	Finally, we can conclude that the only solution is $A$ is a knight, $B$ is a spy and $C$ is a knave.
]

#hw("39")[
	A *detective(侦探)* has interviewed four witnesses to a crime. From the stories of the witnesses the detective has concluded that

	- if the *butler(管家)* is telling the truth then so is the cook;
	- the cook and the gardener cannot both be telling the truth;
	- the gardener and the handyman are not both lying;
	- and if the handyman is telling the truth then the cook is lying.

	For each of the four witnesses, can the detective determine whether that person is telling the truth or lying? Explain your reasoning.
][
	Let $b$ denotes the butler is telling the truth. Similarly, we use $c,g,h$ to represent the cook, gardener and handyman respectively. Then we can translate the detective's conclusion to these logical propositions:

	$
	b -> c equiv not b or c\
	not (c and g) equiv not c or not g\
	not (not g and not h) equiv g or h\
	h -> not c equiv not h or not c 
	$

	Notice that the logical variables $c$ appeared in three of these propositions, so let's discuss the value of $c$ firstly:

	- If $c$ is true, the value of $b$ is not limited; and the value of $g$ and $h$ must be false, since $not c$ is false. But as the value of proposition $g or h$ is false, this situation is invalid.

	- If $c$ is false, the value of $b$ must be true; and the value of $g$ and $h$ are not limited as long as $g and h$ is true holds.

	We can conclude that the cook is lying, the butler is always telling the truth,  one of the gardener and the handyman is telling the truth (since $g or h$ is true), but we can't determine whether he is the gardener or the handyman.
]



= 1.3 Propositional Equivalences

#hw("6")[
	Use a truth table to verify the first De Morgan law $not (p and q) equiv not p or not q$.
][
	The truth table is as follows:

	#table(
		columns: (1fr, 1fr, 2fr, 2fr),
		$p$, $q$, $not (p and q)$, $not p or not q$,
		T, T, F, F,
		T, F, T, T,
		F, T, T, T,
		F, F, T, T,
	)

	From this, we can prove that De Morgan's Laws are correct.
]

#hw("8")[
	Use De Morgan’s laws to find the negation of each of the following statements.

	(a) Kwame will take a job in industry or go to graduate school.
	
	(b) Yoshiko knows Java and calculus.
][
	The negation of these two statements are:

	(a) Kwame will not take a job in industry and will not go to graduate school.

	(b) Yoshiko doesn't know Java or calculus.
]

#hw("12(d)")[
	Show that the conditional statement is a tautology by using truth tables.
	$ [(p or q) and (p->r) and (q->r)] -> r $
][
	The truth table is as follows:
	#let T = [T]
	#let F = [F]
	#table(
		columns: (1fr, 1fr, 1fr, 2fr, 2fr, 2fr, 5fr),
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

#hw("16(b)")[
	Show that each conditional statement in Exercise 12 is a tautology by applying a chain of logical identities as in Example 8. (Do not use truth tables.)

	\* The conditional statement from Exercise 12 is:

	$ [(p -> q) and (q -> r)] -> (p -> r) $
][
	$
	[(p -> q) and (q -> r)] -> (p -> r)
	&equiv not [(not p or q) and (not q or r)] or (not p or r)\
	&equiv not (not p or q) or not (not q or r) or (not p or r)\
	&equiv (p and not q) or (q and not r) or not p or r\
	&equiv [(p and not q) or not p] or [(q and not r) or r]\
	&equiv (not q or not p) or (q or r)\
	&equiv not p or (q or not q) or r\
	&equiv not p or TT or r\
	&equiv TT
	$
	So the given conditional statement is a tautology.
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

#hw("36")[
	Show that $(p ∧ q) → r$ and $(p → r) ∧ (q → r)$ are not logically equivalent.
][
	On the one hard,
	$
	(p and q) -> r
	&equiv not (p and q) or r\
	&equiv not p or not q or r\
	$
	On the other hand,
	$
	(p->r) and (q->r)
	&equiv (not p or r) and (not q or r)\
	&equiv (not p and not q) or r\
	&equiv not (p or q) or r\
	$
	It's obvious that when $p$ is true, $q$ is false and $r$ is false, the proposition $not p or not q or r$ holds true while $not (p or q) or r$ holds false. So the given two logical propositions are not logically equivalent.
]

#hw("44")[
	Find a compound proposition involving the propositional variables $p$, $q$, and $r$ that is true when $p$ and $q$ are true and $r$ is false, but is false otherwise. [Hint: Use a conjunction of each propositional variable or its negation.]
][
	The answer is
	$ p and q and not r $
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

\ We now present a group of exercises that involve the logical operators $NAND$ and $NOR$. The proposition $p NAND q$ is true when either $p$ or $q$, or both, are false; and it is false when both $p$ and $q$ are true. The proposition $p NOR q$ is true when both $p$ and $q$ are false, and it is false otherwise. The propositions $p NAND q$ and $p NOR q$ are denoted by $p|q$ and $p arrow.b q$, respectively. (The operators and $arrow.b$ are called the Sheffer stroke and the Peirce arrow after H. M. Sheffer and C. S. Peirce, respectively.)

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
	Let's discuss in cases:

	- #[
		If $s$ is true, there are three propositions in the given statement always hold true. Only $not p or not r$, $not p or q$, $q or r$, $q or not r$, $not p or not q$, and $p or r$ need to be considered. We can list a truth table:
	
		#table(
			columns: (1fr, 1fr, 1fr, 2fr, 2fr, 2fr, 2fr, 2fr, 2fr),
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
