#import "../template.typ": *

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

#let TT = math.bold(math.upright("T"))
#let FF = math.bold(math.upright("F"))

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


#hw("39(c)")[
	Construct a truth table for each of this compound proposition:

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
	After the program terminated, the $x$ will be:

	(c) $2$

	(d) $1$
]

= 1.2 Application of Propositional Logic

#hw("6")[
	You can upgrade your operating system only if you have a 32-bit processor running at 1 GHz or faster, at least 1 GB RAM, and 16 GB free hard disk space, or a 64-bit processor running at 2 GHz or faster, at least 2 GB RAM, and at least 32 GB free hard disk space.

	Express your answer in terms of $u$: “You can upgrade your operating system,” $b_32$: “You have a 32-bit processor,” $b_64$: “You have a 64-bit processor,” $g_1$: “Your processor runs at 1 GHz or faster,” $g_2$: “Your processor runs at 2 GHz or faster,” $r_1$: “Your processor has at least 1 GB RAM,” $r_2$: “Your processor has at least 2 GB RAM,” $h_16$: “You have at least 16 GB free hard disk space,” and $h_32$: “You have at least 32 GB free hard disk space.”
][
	The proposition can be expressed as follows:
	$
	u -> (b_32 and g_1 and r_1 and h_16) or (b_64 and g_2 and r_2 and h_32)
	$
]

#hw("9")[
	Are these system specifications consistent?

	“The system is in multiuser state if and only if it is operating normally. If the system is operating normally, the kernel is functioning. The kernel is not functioning or the system is in interrupt mode. If the system is not in multiuser state, then it is in interrupt mode. The system is not in interrupt mode.”
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

Exercises 28–35 relate to inhabitants of an island on which there are three kinds of people: knights who always tell the truth, knaves who always lie, and spies (called normals by Smullyan [Sm78]) who can either lie or tell the truth. You encounter three people, A, B, and C. You know one of these people is a knight, one is a knave, and one is a spy. Each of the three people knows the type of person each of other two is. For each of these situations, if possible, determine whether there is a unique solution and determine who the knave, knight, and spy are. When there is no *unique(唯一的)* solution, list all possible solutions or state that there are no solutions.

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
