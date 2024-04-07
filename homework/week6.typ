#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #6: Counting Basic",
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
	For the first $ceil(n/2)$ numbers, they can be either $0$ or $1$; For the last $n-ceil(n/2)$ numbers, they can be determined by the property of palindromes. Thus, the answer is the product of $ceil(n/2)$ 2s. That's to say, $2^ceil(n/2)$.
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
][]

= 6.2 The Pigeonhole Principle

#hw("12")[
	Let $(x_i, y_i), space i = 1, 2, 3, 4, 5$, be a set of five distinct points with integer coordinates in the $x y$ plane. Show that the midpoint of the line joining at least one pair of these points has integer coordinates.
][
	
]

#hw("40")[
	Find the least number of cables required to connect eight computers to four printers to guarantee that for every choice of four of the eight computers, these four computers can directly access four diﬀerent printers. Justify your answer.
][
	
]

#hw("44")[
	Is the statement in Exercise 43 true if 24 is replaced by

	(a) 2?

	(b) 23?

	(c) 25?

	(d) 30?

	_Exercises 43:_  An arm wrestler is the champion for a period of 75 hours. (Here, by an hour, we mean a period starting from an exact hour, such as 1 P.M., until the next hour.) The arm wrestler had at least one match an hour, but no more than 125 total matches. Show that there is a period of consecutive hours during which the arm wrestler had exactly 24 matches.
][

]
