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