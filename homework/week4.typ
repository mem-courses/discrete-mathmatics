#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #4: Functions & Sets & Algorithms",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "March 12, 2024",
)

#let circ = math.circle.stroked.small + math.space

= 2.3 Functions

#hw("22(c)")[
	Determine whether this function is a bijection from $RR$ to $RR$.
	$ f (x) = (x + 1)/(x + 2) $
][]

#hw("36")[
	If $f$ and $f circ g$ are one-to-one, does it follow that $g$ is one-to-one? Justify your answer.
][]

#hw("42(a)")[
	Let $f$ be a function from the set $A$ to the set $B$. Let $S$ and $T$ be subsets of $A$. Show that

	(a) $f (S union T) = f(S) union f(T)$.
][]

#hw("74")[
	Suppose that $f$ is a function from $A$ to $B$, where $A$ and $B$ are finite sets with $abs(A) = abs(B)$. Show that $f$ is one-to-one if and only if it is onto.
][]

#hw("76(c,d)")[
	Prove or disprove each of these statements about the floor and ceiling functions.

	(c) $ceil(ceil(x"/"2)"/"2) = ceil(x"/"4)$ for all real number $x$.

	(d) $floor(sqrt(ceil(x))) = floor(sqrt(x))$ for all positive real numbers $x$.
][]

= 2.5	Cardinality of Sets

#hw("4(c,d)")[
	Determine whether each of these sets is countable or uncountable. For those that are countably infinite, exhibit a one-to-one correspondence between the set of positive integers and that set.

	(c) the real numbers with decimal representations consisting of all 1s.

	(d) the real numbers with decimal representations of all 1s or 9s.
][]

#hw("28")[
	Show that the set $ZZ^+ times ZZ^+$ is countable.
][]

#hw("36")[
	Show that there is a one-to-one correspondence from the set of subsets of the positive integers to the set of real numbers between $0$ and $1$. Use this result and _Exercises 34 and 35_ to conclude that $aleph_0 < abs(cal("P")(ZZ^+)) = abs(RR)$.

	_Hint_: Look at the first part of the hint for _Exercise 35_.
][]

#hw("38")[
	Show that the set of functions from the positive integers to the set ${0,1,2,3,4,5,6,7,8,9}$ is uncountable.

	_Hint_: First set up a one-to-one correspondence between the set of real numbers between $0$ and $1$ and a subset of these functions. Do this by associating to the real number $0.d_1d_2 dots d_n dots$ the function $f$ with $f(n) = d_n$.
][]

= 3.1

#hw("2")[
	Determine which characteristics of an algorithm described in the text (after Algorithm 1) the following procedures have and which they lack.
	
	(a)
	```
	procedure double(n: positive integer)
	while n > 0
	n := 2n
	```

	(b)
	```procedure divide(n: positive integer)
	while n ≥ 0
	m := 1∕n
	n := n − 1
	```

	(c)
	```
	procedure sum(n: positive integer)
	sum := 0
	while i < 10
	sum := sum + i
	```

	(d)
	```procedure choose(a, b: integers)
	x := either a or b
	```
][
]

#hw("4")[
	Describe an algorithm that takes as input a list of $n$ integers and produces as output the largest difference obtained by subtracting an integer in the list from the one following it.
][]

// = 3.2

// #hw("8(c)")[][]
// #hw("26(a)")[][]
// #hw("54")[][]
// #hw("56")[][]

// = 3.3

// #hw("7")[][]
// #hw("10")[][]
