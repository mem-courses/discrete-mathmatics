#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #6: Fundamentals of Counting",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "April 2, 2024",
)

= 6.1 The Basic of Counting

#hw("41")[
	A palindrome is a string whose reversal is identical to the string. How many bit strings of length $n$ are palindromes?
][
	For the first $ceil(n/2)$ numbers, they can be arbitrarily chosen between $0$ or $1$; And for the remaining $n-ceil(n/2)$ numbers, they can be determined by the property of palindromes. Thus, the answer is the product of $ceil(n/2)$ 2s. That's to say, the answer is $2^ceil(n/2)$.
]

#hw("58")[
	The name of a variable in the C programming language is a string that can contain uppercase letters, lowercase letters, digits, or underscores. Further, the first character in the string must be a letter, either uppercase or lowercase, or an underscore. If the name of a variable is determined by its first eight characters, how many different variables can be named in C? (Note that the name of a variable may contain fewer than eight characters.)
][
	For the first character, there are $26+26+1 = 53$ choices. For the rest at most 7 characters, they have $26+26+1+10 = 63$ choices. The number of variables of length $1$ to $8$ is:

	$
	S = sum_(i=0)^7 53 times 63^i = 53 times (63^8-1)/(63-1) = 212133167002880
	$
]

#hw("70")[

	(a) Suppose that a store sells six varieties of soft drinks: cola, ginger ale, orange, root beer, lemonade, and cream soda. Use a tree diagram to determine the number of different types of bottles the store must stock to have all varieties available in all size bottles if all varieties are available in 12-ounce bottles, all but lemonade are available in 20-ounce bottles, only cola and ginger ale are available in 32-ounce bottles, and all but lemonade and cream soda are available in 64-ounce bottles?

	(b) Answer the question in part (a) using counting rules.
][
	#parts(
		a: align(center, image("./images/6-1 solution-70.jpg", width: 28%)),

		b: [
			Using the sum rule, the answer is $6+5+2+4 = 17$.
		]
	)
]

= 6.2 The Pigeonhole Principle

#hw("12")[
	Let $(x_i, y_i), space i = 1, 2, 3, 4, 5$, be a set of five distinct points with integer coordinates in the $x y$ plane. Show that the midpoint of the line joining at least one pair of these points has integer coordinates.
][

	Pigeonholes: 4 holes representing pairs of the remainders of the coordinates module 2 as $(0,0),space (0,1),space (1,0)$ and $(1,1)$.

	Pigeons: 5 points representing 5 pigeons.

	By the pigeonhold principle, at least two points are put into the same pigeonhole, which means the differences of coordinates of two points are both even. That's to say, their midpoint has integer coordinates.
]

#hw("40")[
	Find the least number of cables required to connect eight computers to four printers to guarantee that for every choice of four of the eight computers, these four computers can directly access four different printers. Justify your answer.
][
	For each printer: it should be connected with at least five computers directly. Otherwise, the selection of the remaining four unconnected computers is invalid. So the answer must be at least $4 times 5 = 20$.

	Here, we can provide a construction where the answer is 20: let $A,B,C,D$ denote four printers, and let $1,2,3,4,5,6,7,8$ denote eight computers. The connections are:

	(i) Connect $A$ with $1,2,3,4,5$;

	(ii) Connect $B$ with $2,3,4,5,6$;

	(iii) Connect $C$ with $3,4,5,6,7$;

	(iv) Connect $D$ with $4,5,6,7,8$.

	It can be proved that, for any selection of four computers, there exists an match that each computer directly connect with an unique printer.

	Therefore,  the answer is $20$.
]

#hw("44")[
	Is the statement in Exercise 43 true if 24 is replaced by

	(a) 2?

	(b) 23?

	(c) 25?

	(d) 30?

	_Exercises 43:_  An arm wrestler is the champion for a period of 75 hours. (Here, by an hour, we mean a period starting from an exact hour, such as 1 P.M., until the next hour.) The arm wrestler had at least one match an hour, but no more than 125 total matches. Show that there is a period of consecutive hours during which the arm wrestler had exatly 24 matches.
][
	Proof of _exercise 43_: Let $s_i$ denote the total matches of the first $i$ days. Then $s_0 = 0$ and $1 <= s_i <= 125$ for all $i in [1, 75]$. Let $H_i$ represents the $i$-th pigeonhole where $i=0,1,dots.c,23$.

	By the generalized pigeonhole principle, these exsits a hole $H_k$ with at least four $s_i$ in it. Since the $s_i$ is in the range $[1,125]$. So numbers in $H_k$ could only be chosen from ${k,24+k,48+k,72+k,96+k,120+k}.$ By the pigeonhole principle again, we can derived that we have to chose at least one pair of adjacent $s_i$ from the set. (Because we are choosing 4 from 6.) That's to say, there exists a pair of $s_i$ in $H_k$ such that their differences is exactly $24$.

	And for _exercise 44_, we can calculate the answer through the similar method: (a) True; (b) True; (c) True; (d) True.
]
