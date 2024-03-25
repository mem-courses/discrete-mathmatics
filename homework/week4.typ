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
#let RR = math.bold(math.upright("R"))
#let QQ = math.bold(math.upright("Q"))

= 2.3 Functions

#hw("22(c)")[
	Determine whether this function is a bijection from $RR$ to $RR$.
	$ f (x) = (x + 1)/(x + 2) $
][
	It is not a bijection from $RR$ to $RR$. When $x$ is $-2$, the value of $f(x)$ is undefined. It means that the domain of $f(x)$ is $(-oo, -2) union (-2, +oo)$, so it must not be a bijection from $RR$ to $RR$.
]

#hw("36")[
	If $f$ and $f circ g$ are one-to-one, does it follow that $g$ is one-to-one? Justify your answer.
][
	Let's prove by contradiction. Suppose that $g$ is not a one-to-one function, which means there exists $x$ and $y$ in the domain of $g$ such that $g(x)=g(y)$ and $x!=y$. Thus, $f(g(x)) = f(g(y))$ holds. But $x!=y$, it conflicts with the assumption that $f circ g$ is one-to-one. Therefore, $g(x)$ is one-to-one.
]

#hw("42(a)")[
	Let $f$ be a function from the set $A$ to the set $B$. Let $S$ and $T$ be subsets of $A$. Show that

	(a) $f (S union T) = f(S) union f(T)$.
][
	
	(1) Prove $f(S union T) subset.eq f(S) union f(T)$ by contradiction: Suppose that $f(S union T) subset.eq.not f(S) union f(T)$, which means there exists $x$ in $S union T$ but $not(f(x) in f(S) or f(x) in f(T))$. That is to say, there exists $x in S or x in T$ but $f(x) in.not f(S) and f(x) in.not f(T)$. It conflicts with the definition of functions. Therefore, $f(S union T) subset.eq f(S) union f(T)$ is proved.

	(2) Prove $f(S) union f(T) subset.eq f(S union T)$ by direct proof: For all $y in f(S)$, there exists $x in S$ with $f(x) = y$. This also holds for $y in f(T)$. So for all $y in f(S) union f(T)$, whether $x in S$ or $x in T$ holds, which means $x in S union T$. Therefore, $y in f(S union T)$ must hold. Therefore $f(S) union f(T) subset.eq f(S union T)$.

	Overall, $f(S union T) = f(S) union f(T)$ holds.
]

#hw("74")[
	Suppose that $f$ is a function from $A$ to $B$, where $A$ and $B$ are finite sets with $abs(A) = abs(B)$. Show that $f$ is one-to-one if and only if it is onto.
][
	Let $n$ be the size of sets $A$ and $B$.
	
	(1) Prove "if $f$ is onto, then $f$ is one-to-one" by contradiction: Suppose $f$ is onto but $f$ is not one-to-one. It means that 
]

#hw("76(c,d)")[
	Prove or disprove each of these statements about the floor and ceiling functions.

	(c) $ceil(ceil(x"/"2)"/"2) = ceil(x"/"4)$ for all real number $x$.

	(d) $floor(sqrt(ceil(x))) = floor(sqrt(x))$ for all positive real numbers $x$.
][

	(c) Let's discuss it by cases:

	(c.1) $x equiv 0 space (mod 4)$: $display(ceil(x/4) = x/4)$, $display(ceil(ceil(x/2)/2) = ceil(x/4) = x/4)$.

	(c.2) $x equiv 1 space (mod 4)$: $display(ceil(x/4) = (x-1)/4)$, $display(ceil(ceil(x/2)/2) = ceil(((x-1)/2)/2) = ceil((x-1)/4) = (x-1)/4)$.

	(c.3) $x equiv 2 space (mod 4)$: $display(ceil(x/4) = (x-2)/4)$, $display(ceil(ceil(x/2)/2) = ceil((x/2)/2) = ceil(x/4) = (x-2)/4)$.

	(c.4) $x equiv 3 space (mod 4)$: $display(ceil(x/4) = (x-3)/4)$, $display(ceil(ceil(x/2)/2) = ceil(((x-1)/2)/2) = ceil((x-1)/4) = (x-3)/4)$.

]

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

= 3.1 Algorithms

#hw("2")[
	Determine which characteristics of an algorithm described in the text (after Algorithm 1) the following procedures have and which they lack.
	
	#table(
		columns: (2em, 1fr),
		align: left + top,
		stroke: 0pt,
		[(a)], box(width: 50%)[
			#set par(first-line-indent: 0em)
			
			*procedure* _double_(_n_: positive integer)
			
			*while* _n_ > 0

			#h(2em) _n_ := 2#[]_n_
		],
		[(b)], box(width: 50%)[
			#set par(first-line-indent: 0em)
			
			*procedure* _divide_(_n_: positive integer)

			*while* _n_ ≥ 0
			
			#h(2em) _m_ := 1#[/]_n_

			#h(2em) _n_ := _n_ − 1
		],
		[(c)], box(width: 50%)[
			#set par(first-line-indent: 0em)
			
			*procedure* _sum_(_n_: positive integer)

			_sum_ := 0

			*while* _i_ < 10

			#h(2em) _sum_ := _sum_ + _i_
		],
		[(d)], box(width: 50%)[
			#set par(first-line-indent: 0em)

			*procedure* _choose_(_a_, _b_: integers)
			
			_x_ := either _a_ or _b_
		],
	)
][
	
	(a) This algorithm lacks finiteness, the algorithm will never terminate.

	(b) This algorithm lacks correctness, the value of $1"/"n$ when $n=0$ is undefined.

	(c) This algorithm lacks generality, this function only works when $n=10$.

	(d) This algorithm lacks definiteness, it's unclear whether the returned value would be $a$ or $b$.
]

#hw("4")[
	Describe an algorithm that takes as input a list of $n$ integers and produces as output the largest difference obtained by subtracting an integer in the list from the one following it.
][

	*procedure* _largest_difference_(_a_: the list, _n_: the size of the list)

	$i:=1$

	$max_diff := -oo$

	*while* $i<n$

	#h(2em) *if* $a[i+1]-a[i] > max_diff$

	#h(4em) $max_diff := a[i+1] - a[i]$
]

// = 3.2

// #hw("8(c)")[][]
// #hw("26(a)")[][]
// #hw("54")[][]
// #hw("56")[][]

// = 3.3

// #hw("7")[][]
// #hw("10")[][]
