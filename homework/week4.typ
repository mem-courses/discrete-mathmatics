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
	
	(1) Prove that $f(S union T) subset.eq f(S) union f(T)$ by contradiction: Suppose that $f(S union T) subset.eq.not f(S) union f(T)$, which means there exists $x$ in $S union T$ but $not(f(x) in f(S) or f(x) in f(T))$. That is to say, there exists $x in S or x in T$ but $f(x) in.not f(S) and f(x) in.not f(T)$. It conflicts with the definition of functions. Therefore, $f(S union T) subset.eq f(S) union f(T)$ is proved.

	(2) Prove that $f(S) union f(T) subset.eq f(S union T)$ by direct proof: For all $y in f(S)$, there exists $x in S$ with $f(x) = y$. This also holds for $y in f(T)$. So for all $y in f(S) union f(T)$, whether $x in S$ or $x in T$ holds, which means $x in S union T$. Therefore, $y in f(S union T)$ must hold. Therefore $f(S) union f(T) subset.eq f(S union T)$.

	Overall, $f(S union T) = f(S) union f(T)$ holds.
]

#hw("74")[
	Suppose that $f$ is a function from $A$ to $B$, where $A$ and $B$ are finite sets with $abs(A) = abs(B)$. Show that $f$ is one-to-one if and only if it is onto.
][
	Let $n$ be the size of sets $A$ and $B$.
	
	(1) Prove that "if $f$ is onto, then $f$ is one-to-one" by contradiction: Suppose $f$ is onto but is not one-to-one, which means that there exists $x,y in A$ with $f(x) = f(y) and x != y$. Then since $f$ is a onto function, for any other element $y$ in $B$, there must exist at least one element (let's call it $x$) in $A$ such that $f(x) = y$. Thus, the size of $A$ is at least $|B|+1$, which conflicts with the assumption $abs(A) = abs(B)$. So "if $f$ is onto, then $f$ is one-to-one" is proved.

	(2) Prove that "if $f$ is one-to-one, then $f$ is onto" by direct proof. By the definition of one-to-one functions, for any $y$ in $B$, there is at most one element $x$ in $A$ such that $f(x) = y$. Since $abs(A) = abs(B)$, we could only map exactly one element in $A$ to the elements in $B$. Therefore, all elements in $B$ is mapped, which means f is a onto function.

	Overall, "$f$ is one-to-one if and only if it's onto" is proved above.
]

#hw("76(c,d)")[
	Prove or disprove each of these statements about the floor and ceiling functions.

	(c) $ceil(ceil(x"/"2)"/"2) = ceil(x"/"4)$ for all real number $x$.

	(d) $floor(sqrt(ceil(x))) = floor(sqrt(x))$ for all positive real numbers $x$.
][

	(c) It's true. Proof: Let $c$ be the value of $display(ceil(x))$. For any real number $x$, it's obvious that $display(ceil(x/2) = ceil(c/2))$ and $display(ceil(x/4) = ceil(c/4))$ holds. Thus we can have a discuss by cases:

	(c.1) $c equiv 0 space (mod 4)$: $display(ceil(c/4) = c/4)$, $display(ceil(ceil(c/2)/2) = ceil(c/4) = c/4)$.

	(c.2) $c equiv 1 space (mod 4)$: $display(ceil(c/4) = (c-1)/4)$, $display(ceil(ceil(c/2)/2) = ceil(((c-1)/2)/2) = ceil((c-1)/4) = (c-1)/4)$.

	(c.3) $c equiv 2 space (mod 4)$: $display(ceil(c/4) = (c-2)/4)$, $display(ceil(ceil(c/2)/2) = ceil((c/2)/2) = ceil(c/4) = (c-2)/4)$.

	(c.4) $c equiv 3 space (mod 4)$: $display(ceil(c/4) = (c-3)/4)$, $display(ceil(ceil(c/2)/2) = ceil(((c-1)/2)/2) = ceil((c-1)/4) = (c-3)/4)$.

	Overall, $display(ceil(ceil(c/2)/2) = ceil(c/4))$ holds for all real number $c$.


	(d) It's false. We can find a counter example easily: suppose that $x=8.1$, then $floor(sqrt(x))=2$ but $floor(sqrt(ceil(x))) = 3$.

]

= 2.5	Cardinality of Sets

#hw("4(c,d)")[
	Determine whether each of these sets is countable or uncountable. For those that are countably infinite, exhibit a one-to-one correspondence between the set of positive integers and that set.

	(c) the real numbers with decimal representations consisting of all 1s.

	(d) the real numbers with decimal representations of all 1s or 9s.
][

	(c) Let the set $A$ contain all real numbers with decimal representations consisting of all 1s, and the set $S$ be ${(p,q) | p,q in RR}$.

	(c.1) Prove that $abs(A) <= abs(S)$: For any $x$ in $A$, let $p$ be the number of 1s before the decimal point, and let $q$ be the number of 1s after the decimal point. Then, we can map $x$ with the paired positive integer $(p,q)$ in the set $S$.

	(c.2) Prove that $abs(S) <= abs(A)$: For any pair of positive integers $(p,q)$, we can map it to an decimal number $x in A$ such that $x = 10^(p)+10^(p-1)+dots.c+10+1+10^(-1)+10^(-2)+dots.c+10^(-q)$.

	Therefore, $abs(A)=abs(S)$. We will prove that $abs(S) = abs(ZZ_+ times ZZ_+) = aleph_0$ soon in _Exercise 28_, so that $A$ is *countable*.

	// (c.1) Prove that $abs(A) <= abs(QQ_+)$: For any $x$ in $A$, let $p$ be the number of 1s before the decimal point, and let $q$ be the number of 1s after the decimal point. Here we can map $x$ with the paired positive integer $(p,q)$. 

	// (c.1) Prove that $abs(A) <= abs(QQ_+)$: For all real numbers in $A$, are all rational numbers, or $A subset.eq QQ_+$. So that $abs(A) <= abs(QQ_+)$.

	// (c.2) Prove that $abs(QQ_+) <= |S|$: For any positive rational number $x$ in $QQ_+$, it can be represented as $p"/"q$ where $p$ and $q$ are positive integers with $gcd(p,q) = 1$. 

	// (c.3) Prove that $abs(S) <= abs(A)$: For any pair of positive integers $(p,q)$, we can map it to an decimal number $x in A$ such that $x = 10^(p)+10^(p-1)+dots.c+10+1+10^(-1)+10^(-2)+dots.c+10^(-q)$.

	// Overall, $|A| = |QQ_+| = |S|$ holds, which means $A$ is countable.

	(d) Let the set $B$ contain all real numbers with decimal representations consisting of all 1s or 9s. Here we will prove that $B$ is uncountable.

	Obviously, $B subset.eq A$, so that $abs(B) <= abs(A)$. And we can prove that $abs(B) != abs(A) = abs(ZZ_+)$ by contradiction:

	Suppose that $abs(B) = abs(ZZ_+)$, which means that $B={b_1,b_2, dots.c}$. Suppose their decimal representations are

	$
	b_1 &= d_1 . bold(b_11) b_12 b_13 dots.c\
	b_2 &= d_2 . b_21 bold(b_22) b_23 dots.c\
	b_3 &= d_3 . b_31 b_32 bold(b_33) dots.c\
	$

	#h(indent)Here $d_i$ represents the integer part of $b_i$, and $b_(i,j)$ represents the $j$-th integer after the decimal point of $b_i$. $b_(i,j)$ is whether 1 or 9, and specially $b_(i,j) = 0$ when $j$-th integer after the decimal point not exists.

	Then, let $x=1.x_1 x_2 x_3 dots.c$ where $x_i = 1$ when $b_(i,i)=9$ and $x_i=9$ when $b_(i,i) = 1$ or $0$. So that, if we compare $x$ with elements in $B$, there exists at least one digit such that $x_i != b_(i,i)$, which means $x$ is not in the set $B$, and that's a contradiction. Therefore, $B$ is *uncountable*.
]

#hw("28")[
	Show that the set $ZZ_+ times ZZ_+$ is countable.
][
	We can list a table and put all the pairs of positive integers $(p,q)$ to the $p$-th row and $q$-th column. Then we can count all these elements one by one along diagonal lines from the bottom left to the top right. More formally, we can represent $S$ as ${r_1, r_2, r_3, dots.c}$. Here $r_n = display((n-(m(m-1))/2, (m(m+1))/2+1-n))$ where $m$ is the only positive integer such that $display((m(m-1))/2 < n<= (m(m+1))/2)$. Overall, we can map the set $ZZ_+ times ZZ_+$ to the set $ZZ_+$ one-to-one and onto, which means that $ZZ_+ times ZZ_+$ is countable.
]

#hw("36")[
	Show that there is a one-to-one correspondence from the set of subsets of the positive integers to the set of real numbers between $0$ and $1$. Use this result and _Exercises 34 and 35_ to conclude that $aleph_0 < abs(cal("P")(ZZ_+)) = abs(RR)$.

	_Hint_: Look at the first part of the hint for _Exercise 35_.
][
	For any set in the power set of positive integers, it can be represent as a infinite 0-1 string which we usually call it "bitset". We simply write down "0." before this 0-1 string, so that it can be regarded as a binary decimal number between $0$ and $1$. That is to say, we have conclude a one-to-one correspondence from $cal("P")(ZZ_+)$ to ${x | 0<x<1}$.

	Then applying the conclusion from _Exercise 34 and 35_, we can conclude that $abs(aleph_0) < abs(cal("P")(ZZ_+)) = abs(RR)$.
]

#hw("38")[
	Show that the set of functions from the positive integers to the set ${0,1,2,3,4,5,6,7,8,9}$ is uncountable.

	_Hint_: First set up a one-to-one correspondence between the set of real numbers between $0$ and $1$ and a subset of these functions. Do this by associating to the real number $0.d_1d_2 dots.c d_n dots.c$ the function $f$ with $f(n) = d_n$.
][
	Let's prove it by contradiction: Suppose that such set $F$ is countable, which means that we can list all elements in $F$ as $F={f_1,f_2,f_3,dots.c}$. Here we can constract a function $g$ such that for any positive integer $n$, $g(n) = 0$ when $f_n (n) != 0$, and $g(n) = 1$ when $f_n (n) = 0$. So, compare $g$ with all functions in $F$, we can find at least one $x$ in the domain with $f(x) != g(x)$, which means $g$ is not in the set $F$. But it conflicts with the definition of $F$. Therefore, $F$ is not countable.
]

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

	*return* $max_diff$
]

// = 3.2

// #hw("8(c)")[][]
// #hw("26(a)")[][]
// #hw("54")[][]
// #hw("56")[][]

// = 3.3

// #hw("7")[][]
// #hw("10")[][]
