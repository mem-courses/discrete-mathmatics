#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #9: Generating Function & Relation",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "April 16, 2024",
)

#let mt = math.bold(math.upright("M"))
#let circ = $◦$

= 8.4 Generating Functions

#hw("6(d,f)")[
	Find a closed form for the generating function for the sequence ${a_n}$, where

	#v(0.25em)
	#parts(
		columns: 2,
		d: [$display(a_n=1/((n+1)!))$ for $n=0,1,2,dots$],
		f: [$display(a_n=binom(10,n+1))$ for $n=0,1,2,dots$]
	)
][#parts(
	d: [
		Let $display(A(x) = sum_(n>=0) a_n x^n)$, then
		$
		& A(x) = sum_(n>=0) (x^n)/((n+1)!)\
		==>quad& x A(x)= sum_(n>=0) (x^(n+1))/((n+1)!)= sum_(n>=1) (x^n)/(n!) = e^x - 1\
		==>quad& A(x) = (e^x-1)/x
		$
	],
	f: [
		Let $A(x) = sum_(n>=0) a_n x^n$, then
		$
		& A(x) = sum_(n>=0) binom(10,n+1) x^n\
		==>quad& x A(x) = sum_(n>=1) binom(10,n) x^n = (1+x)^10 - 1\
		==> quad& A(x) = ((1+x)^10 - 1)/x
		$
	]
)]

#hw("10(c,d,e)")[
	Find the coefficient of $x^9$ in the power series of each of these functions.

	#parts(
		c: $(x^3+x^5+x^6)(x^3+x^4)(x+x^2+x^3+x^4+dots.c)$,
		d: $(x+x^4+x^7+x^10+dots.c)(x^2+x^4+x^6+x^8+dots.c)$,
		e: $(1+x+x^2)^3$
	)
][#parts(
	c: [
		$3+3=6<9, 3+4=7<9, 5+3=8<9$. Thus, the coefficient of $x^9$ is 3.
	],
	d: [
		$9=1+8=3+6=5+4=7+2$. Thus, the coefficient of $x^9$ is 4.
	],
	e: [
		Since $2 times 3 =6<9$, the coefficient of $x^9$ is 0.
	]
)]

#hw("16")[
	Use generating functions to find the number of ways to choose a dozen bagels from three varietiesegg, salty, and plainif at least two bagels of each kind but no more than three salty bagels are chosen.
][
	Let the generating function for the number of ways to choose $n$ bagels. Then
	$
	F(x) = (x^2+x^3)(x^2+x^3+x^4+dots.c)^2 = (x^2+x^3) dot (1/(1-x))^2 = (x^6 (1+x))/((1-x)^2)
	$
	The answer is the coefficient of $x^12$ in $F(x)$, which is the coefficient of $x^6$ in $display((1+x)/((1-x)^2))$. Thus, the answer is $2 times 6 + 1= 13$.
]

#hw("24(a)")[
	What is the generating function for ${a_k}$, where $a_k$ is the number of solutions of $x_1 + x_2 + x_3 + x_4 = k$ when $x_1, x_2, x_3,$ and $x_4$ are integers with $x_1 >= 3$, $1 <= x_2 <= 5$, $0 <= x_3 <= 4$, and $x_4>=1$?
][
	The generating function is
	$
	A(x) = (x^3)/(1-x) dot (x-x^6)/(1-x) dot (1-x^5)/(1-x) dot x/(1-x) = (x^5(1-x^5)^2)/((1-x)^4)
	$
]

#hw("32")[
	If $G(x)$ is the generating function for the sequence ${a_k}$, what is the generating function for each of these sequences?

	#parts(
		a: [$2 a_0, 2 a_1, 2 a_2, 2 a_3, dots$],
		b: [$0,a_0,a_1,a_2,a_3,dots$ (assuming that terms follow the pattern of all but the first term)],
		c: [$0,0,0,0,a_2,a_3,dots$ (assuming that terms follow the pattern of all but the first four terms)],
		d: [$a_2,a_3,a_4,dots$],
		e: [$a_1,2 a_2, 3 a_3, 4 a_4, dots$],
		f: [$a_0^2,2 a_0 a_1, a_1^2 + 2 a_0 a_2, 2 a_0 a_3 + 2 a_1 a_2,dots$],
	)
][#parts(
	a: [$F_1(x) = 2 G(x)$.],
	b: [$F_2(x) = x G(x)$.],
	c: [$F_3(x) = x^4 (G(x)-a_0-a_1 x)$.],
	d: [$F_4(x) = (G(x)-a_0)"/"x$.],
	e: [$F_5(x) = G'(x)$.],
	f: [$F_6(x) = G^2(x)$.],
)]

#hw("36")[
	Use generating functions to solve the recurrence relation $a_k=3 a_(k-1) + 4^(k-1)$ with the initial condition $a_0=1$.
][
	Assume the generating function of ${a_i}$ is $A(x)$. Since the recurrence relation holds for all $k=1,2,dots$, we have
	$
	&sum_(k>=1) a_k x^k = sum_(k>=1) (3 a_(k-1) + 4^(k-1) ) x^k\
	==>quad&  A(x) - 1 = 3 x A(x) + x/(1-4x)\
	==>quad& A(x) = 1/(1-4x)\
	$
]

#hw("45")[
	 Use generating functions to prove Vandermonde’s identity: $C(m+n,r)=sum_(k=0)^r C(m,r-k) C(n,k)$, whenever $m,n$, and $r$ are nonnegative integers with $r$ not exceeding either $m$ or $n$.

	 _Hint_: Look at the coefficient of $x^r$ in both sides of $(1+x)^(m+n)=(1+x)^m (1+x)^n$.
][
	We use $[x^k] F(x)$ to represent the coefficient of $x^k$ in the generating function $F(x)$. Then
	$
	binom(m+n,r)
	&= [x^r] (1+x)^(m+n)
	= [x^r] ((1+x)^m (1+x)^n)
	= sum_(k=0)^r ([x^(r-k)] (1+x)^m) ([x^(k)] (1+x)^n)\
	&= sum_(k=0)^r binom(m,r-k)binom(n,k)
	$
]

= 8.5 Inclusion-Exclusion 

#hw("7")[
	There are 2504 computer science students at a school. Of these, 1876 have taken a course in Java, 999 have taken a course in Linux, and 345 have taken a course in C. Further, 876 have taken courses in both Java and Linux, 231 have taken courses in both Linux and C, and 290 have taken courses in both Java and C. If 189 of these students have taken courses in Linux, Java, and C, how many of these 2504 students have not taken a course in any of these three programming languages?
][
	The number of students that has taken at least one course is
	$
	1876+999+345-876-231-290+189=2012
	$
	So the number of students that has not taken any courses is
	$
	2504 - 2012 = 492
	$
]

#hw("10")[
	Find the number of positive integers not exceeding 100 that are not divisible by 5 or by 7.
][
	For all positive integers not exceeding 100, there are 20 multiples of 5, 14 multiples of 7, and 2 multiples of 35. So the answer is
	$
	100 - (20 + 14 - 2) = 68
	$
]

#hw("20")[
	How many terms are there in the formula for the number of elements in the union of 10 sets given by the principle of inclusion-exclusion?
][
	The answer is $2^10-1=1023$.
]

= 8.6 Applications of Inclusion-Exclusion 

#hw("6")[
	An integer is called squarefree if it is not divisible by the square of a positive integer greater than 1. Find the number of squarefree positive integers less than 100.
][
	Now we only discuss for the positive integers less than 100. Then the squared factor can be $4,9,16,25,36,49,64,81$. The answer is
	$
	& 99 - floor(99/4) - floor(99/9) - floor(99/16) - floor(99/25) - floor(99/36) - floor(99/49) - floor(99/64) - floor(99/81) + floor(99/(4 times 9)) + floor(99/(4 times 16))\
	=& 99 - 24 - 11 - 6 - 3 - 2 - 2 - 1 - 1 + 2 + 1 = 52
	$
]

#hw("11")[
	In how many ways can seven different jobs be assigned to four different employees so that each employee is assigned at least one job and the most difficult job is assigned to the best employee?
][
	We just ignore the restriction "the most difficult job is assigned to the best employee" firstly. Then we can discuss of the distribution of jobs among employees:

	(1) ${4,1,1,1}$, $n_1=binom(7,4,1,1,1) binom(4,1,3) = 840$.

	(2) ${3,2,1,1}$, $n_2=binom(7,3,2,1,1) binom(4,1,1,2) = 5040$.

	(3) ${2,2,2,1}$, $n_3=binom(7,2,2,2,1) binom(4,3,1) = 2520$.
	
	Consider that the most difficult job has an equal probability of being assigned to each employee, which is $1"/"4$. So the number of ways that the best employee take the most difficult job is
	$
	1/4 (n_1 + n_2 + n_3) = 2100
	$
]

#hw("16")[
	 A group of $n$ students is assigned seats for each of two classes in the same classroom. How many ways can these seats be assigned if no student is assigned the same seat for both classes?
][
	There are $n!$ ways to do the first assignment, and $D_n$ ways to do the second. Here $D_n$ represent the number of ways in $n$-derangement. So the answer is
	$
	n! D_n = (n!)^2 (1/(2!) - 1/(3!) + 1/(4!) - dots.c + (-1)^n 1/(n!))
	$
]

= 9.1 Relations and Their Properties

#hw("7(a,c,h)")[
	Determine whether the relation $R$ on the set of all integers is reflexive, symmetric, antisymmetric, and/or transitive, where $(x, y) in R$ if and only if

	#parts(
		columns: 3,
		a: [$x!=y$.],
		c: [$x=y+1$ or $x=y-1$.],
		h: [$x>=y^2$.],
	)
][#parts(
	a: [The relation is irreflexive, symmetric and transitive.],
	c: [The relation is irreflexive and symmetric.],
	h: [The relation is transitive.],
)]

#hw("26")[
	Let $R$ be the relation $R = {(a, b) | a < b}$ on the set of integers. Find

	#parts(
		columns: 2,
		a: [$R^(-1)$.],
		b: [$overline(R)$.],
	)
][#parts(
	a: [$R^(-1) = {(b,a) | a < b} = {(a,b) | a > b}$.],
	b: [$overline(R) = {(a,b) | not(a<b)} = {(a,b) | a >= b}$.],
)]

#hw("32")[
	Let $R$ be the relation ${(1, 2), (1, 3), (2, 3), (2, 4), (3, 1)}$, and let $S$ be the relation ${(2, 1), (3, 1), (3, 2), (4, 2)}$. Find $S circ R$.
][
	Discuss with the common elements between two relations:

	1: $(3,1)$ from $R$, and none from $S$.

	2: $(1,2)$ from $R$, and $(2,1)$ from $S$.

	3: $(1,3), (2, 3)$ from $R$, and $(3,1), (3, 2)$ from $S$.

	4: (2,4) from $R$, and $(4, 2)$ from $S$.

	Overall, we can conclude that $S circ R = {(1,1),(1,2),(2,1),(2,2)}$.
]

#hw("49")[
	How many relations are there on a set with $n$ elements that are

	#parts(
		columns: 2,
		a: [symmetric?],
		b: [antisymmetric?],
		c: [asymmetric?],
		d: [irreflexive?],
		e: [reflexive and symmetric?],
		f: [neither reflexive nor irreflexive?],
	)
][#parts(
	a: [$n_a = 2^(C(n,2) + n) = 2^(n(n+1)"/"2)$.],
	b: [$n_b = 3^(C(n,2)) times 2^n$.],
	c: [$n_c = 3^(C(n,2))$.],
	d: [$n_d = 2^(n^2 - n) = 2^(n(n-1))$.],
	e: [$n_e = 2^(C(n,2)) = 2^(n(n-1)"/"2)$.],
	f: [$n_f = 2^(n(n-1)) times (2^(n)-2)$.],
)]

#hw("53")[
	Show that the relation $R$ on a set $A$ is symmetric if and only if $R = R^(−1)$, where $R^(−1)$ is the inverse relation.
][

	Prove that if $R$ is symmetric, then $R = R^(-1)$: Since $R$ is symmetric, for any pair $(a,b) in R$, we have $(b,a) in R$ too. So $R subset.eq R^(-1)$ by definition. On the other hand, for any pair $(b,a) in R$, we have $(a,b) in R$. So $R^(-1) subset.eq R$. Thus, $R = R^(-1)$.

	Prove that if $R=R^(-1)$, then $R$ is symmetric: Since $R=R^(-1)$. For any pair $(a,b) in R$, we have $(a,b) in R^(-1)$, which means $(b,a) in R$. So $R$ is symmetric.
]

= 9.3 Representing Relations

#hw("13")[
	Let $R$ be the relation represented by the matrix
	$
	mt_R = mat(
		0,1,1;
		1,1,0;
		1,0,1;
	)
	$
	Find the matrix representing

	#parts(
		columns: 3,
		a: [$R^(-1)$.],
		b: [$overline(R)$.],
		c: [$R^2$.],
	)
][$
	mt_(R^(-1)) &= mat(0,1,1;1,1,0;1,0,1) (=mt_R) quad quad quad
	mt_(overline(R)) &= mat(1,0,0;0,0,1;0,1,0) quad quad quad
	mt_(R^2) &= mat(1,1,1;1,1,1;1,1,1)
$]

#hw("14")[
	Let $R_1$ and $R_2$ be relations on a set $A$ represented by the matrices
	$
	mt_(R_1) = mat(0,1,0;1,1,1;1,0,0) "and" mt_(R_2) = mat(0,1,0;0,1,1;1,1,1)
	$
	Find the matrices that represent

	#parts(
		columns: 3,
		a: [$R_1 union R_2$.],
		b: [$R_1 sect R_2$.],
		c: [$R_2 circ R_1$.],
		d: [$R_1 circ R_1$.],
		e: [$R_1 plus.circle R_2$.],
	)
][$
	mt_(R_1 union R_2) = mat(0,1,0;1,1,1;1,1,1) quad quad quad
	mt_(R_1 sect R_2) = mat(0,1,0;0,1,1;1,0,0) quad quad quad
	mt_(R_2 circ R_1) = mat(0,1,1;1,1,1;0,1,0)\
	mt_(R_1 circ R_1) = mat(1,1,1;1,1,1;0,1,0) quad quad quad
	mt_(R_1 plus.circle R_2) = mat(0,0,0;1,0,0;0,1,1)
$]

#hw("31")[
	Determine whether the relations represented by the directed graphs shown in Exercises 23–25 are reflexive, irreflexive, symmetric, antisymmetric, and/or transitive.

	#align(center, image("images/2024-04-29-14-27-29.png", width: 60%))
][#parts(
	a: [
		The relation is ${(a,b),(a,c),(b,c),(c,b)}$. So it's irreflexive and transitive.	
	],
	b: [
		The relation is ${(a,c),(c,d),(d,b),(b,a)}$. So it's irreflexive and antisymmetric.
	]
)]
