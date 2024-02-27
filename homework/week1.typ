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
	Construct a truth table for each of these compound propositions.

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
	You can upgrade your operating system only if you have a 32-bit processor running at 1 GHz or faster, at least 1 GB RAM, and 16 GB free hard disk space, or a 64-bit processor running at 2 GHz or faster, at least 2 GB RAM, and at least 32 GB free hard disk space. Express your answer in terms of u: “You can upgrade your operating system,” $b_32$: “You have a 32-bit processor,” $b_64$: “You have a 64-bit processor,” $g_1$: “Your processor runs at 1 GHz or faster,” $g_2$: “Your processor runs at 2 GHz or faster,” $r_1$: “Your processor has at least 1 GB RAM,” $r_2$: “Your processor has at least 2 GB RAM,” h16: “You have at least 16 GB free hard disk space,” and h32: “You have at least 32 GB free hard disk space.”
][
	
]

#hw("9")[
	Are these system specifications consistent? “The system is in multiuser state if and only if it is operating normally. If the system is operating normally, the kernel is functioning. The kernel is not functioning or the system is in interrupt mode. If the system is not in multiuser state, then it is in interrupt mode. The system is not in interrupt mode.”
][
	
]

#hw("28")[
	$A$ says “$C$ is the knave,” $B$ says “$A$ is the knight,” and $C$ says “I am the spy.”
][
	
]

#hw("39")[
	A detective has interviewed four witnesses to a crime. From the stories of the witnesses the detective has concluded that if the butler is telling the truth then so is the cook; the cook and the gardener cannot both be telling the truth; the gardener and the handyman are not both lying; and if the handyman is telling the truth then the cook is lying. For each of the four witnesses, can the detective determine whether that person is telling the truth or lying? Explain your reasoning.
][
	
]