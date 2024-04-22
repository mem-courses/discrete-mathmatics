#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #8: Recurrence Relations",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "April 16, 2024",
)

= 6.6 Generating Permutations and Combinations

#hw("6(f)")[
	Find the next larger permutation in lexicographic order after each of these permutations.

	(f) 23587416
][
	The answer is 23587461.
]

#hw("7")[
	Use Algorithm 1 to generate the 24 permutations of the first four positive integers in lexicographic order.
	#align(center, image("./images/6-6 algorithm-1.jpg", width: 90%))
][

	1234, 1243, 1324, 1342, 1423, 1432; 2134, 2143, 2314, 2341, 2413, 2431;

	3124, 3142, 3214, 3241, 3412, 3421; 4123, 4132, 4213, 4231, 4312, 4321.
]

#hw("9")[
	Use Algorithm 3 to list all the 3-combinations of ${1, 2, 3, 4, 5}$.
	#align(center, image("./images/6-6 algorithm-3.jpg", width: 90%))
][
	{1,2,3}, {1,2,4}, {1,2,5}, {1,3,4}, {1,3,5}, {1,4,5}, {2,3,4}, {2,3,5}, {2,4,5}, {3,4,5}.
]

== 8.1 Applications of Recurrence Relations 

#hw("8")[
  
	(a) Find a recurrence relation for the number of bit strings of length $n$ that contain three consecutive 0s.
  
	(b) What are the initial conditions?
  
	(c) How many bit strings of length seven contain three consecutive 0s?
][
	#parts(
		a: [
			The recurrence relation is $a_n=a_(n-1) + a_(n-2) + a_(n-3) + 2^(n-3)$ for all $n>=3$, just discuss the last three digit in the string is xx1, x10, 100 or 000.
		],
		b: [
			The initial conditions are $a_0=a_1=a_2=0$.
		],
		c: [
			$a_3=0+0+0+1=1,space a_4 = 0+0+1+2=3,space a_5=0+1+3+4=8,space a_6=1+3+8+8=20,space a_7=3+8+20+16=47.$
		]
	)
]

#hw("10")[

	(a) Find a recurrence relation for the number of bit strings of length $n$ that contain the string 01.

  (b) What are the initial conditions?

  (c) How many bit strings of length seven contain the string 01?
][

	(a) The recurrence relation is $a_n = 2 a_(n-1) - a_(n-2) + 2^(n-2)$.

	(b) The initial conditions are $a_1 = 0$ and $a_2 = 1$.

	(c) $a_3=2-0+2=4$; $a_4=8-1+4=11$; $a_5=22-4+8=26$; $a_6=52-11+16=57$; $a_7=114-26+32=120$
]

#hw("26")[

	(a) Find a recurrence relation for the number of ways to completely cover a $2 times n$ checkerboard with $1 times 2$ dominoes. 
	
	_Hint_: Consider separately the coverings where the position in the top right corner of the checkerboard is covered by a domino positioned horizontally and where it is covered by a domino positioned vertically.

  (b) What are the initial conditions for the recurrence relation in part (a)?

  (c) How many ways are there to completely cover a $2 times 17$ checkerboard with $1 times 2$ dominoes?
][

	(a) The recurrence relation is $a_n=a_(n-1)+a_(n-2)$.

	(b) The initial conditions are $a_1=1$ and $a_2=2$.

	(c) The sequence ${a}$ is ${1,2,3,5,8, 13,21,34,55,89, 144,233,377,610,987, 1597,2584}$. So the answer is 2584.
]

#hw("29")[
	Let $S(m, n)$ denote the number of onto functions from a set with $m$ elements to a set with $n$ elements. Show that $S(m, n)$ satisfies the recurrence relation
	$
	S(m,n)=n^m-sum_(k=1)^(n-1) C(n,k) S(m,k)
	$
	whenever $m>=n$ and $n>1$, with the initial condition $S(m,1)=1$.
][
	Assume the size of domain is $m$ and the size of codomain is $n$. The number of functions from the domain to the codomain without any restrictions is $n^m$. 

	Then we need to deduce the number of non-onto functions. Consider an non-onto function, it must be a onto function defined on a subset of original codomain. Assume the size of such subset is $k$, then we have $C(n,k)$ ways to choose the codomain and $S(m,k)$ ways to conduct such functions.

	Therefore, the number of onto functions satisfies the recurrence relation $S(m,n)=n^m-sum_(k=1)^(n-1) C(n,k) S(m,k)$.
]

#hw("32")[
	In the Tower of Hanoi puzzle, suppose our goal is to transfer all $n$ disks from peg 1 to peg 3, but we cannot move a disk directly between pegs 1 and 3. Each move of a disk must be a move involving peg 2. As usual, we cannot place a disk on top of a smaller disk.

  (a) Find a recurrence relation for the number of moves required to solve the puzzle for $n$ disks with this added restriction.

  (b) Solve this recurrence relation to find a formula for the number of moves required to solve the puzzle for $n$ disks.

  (c) How many different arrangements are there of the $n$ disks on three pegs so that no disk is on top of a smaller disk?

  (d) Show that every allowable arrangement of the $n$ disks occurs in the solution of this variation of the puzzle.
][#parts(
	a: [
		To move $n$ disks from peg 1 to 3, we can:

		- Step 1: move top $n-1$ disks from peg 1 to peg 3;
		- Step 2: move the $n$-th disk from peg 1 to peg 2;
		- Step 3: move top $n-1$ disks from peg 3 to peg 1;
		- Step 4: move the $n$-th disk from peg 2 to peg 3;
		- Step 5: move top $n-1$ disks from peg 1 to peg 3.

		So the recurrence relation is $a_n=3 a_(n-1) + 2$.
	],
	b: [
		The initial condition is $a_1=2$. The recurrence relation is equivalent to
		$
		(a_n+1)=3(a_(n-1) + 1) = 3^(n-1) (a_1 + 1) = 3^n
		$
		So we can derived that $a_n=3^n-1$.
	],
	c: [
		Assign each disk to a peg, then the order of disks on each peg is uniquely determined by their size. So the number of ways is $3^n$.
	],
	d: [
		We take $3^n-1$ moves, so there are $3^n$ arrangements occured in the solution. Just prove that these arrangements are distinct by contridiction. Suppose that there are two identical arrangements, then all step between them can be omitted. This goes against the fact that the number of moves is minimal. So the assumption is wrong, which means that all $3^n$ arrangements are distinct. Thus all $3^n$ arrangements occur in the solution.
	]
)]

== 8.2 Solving Linear Recurrence Relations

#hw("2")[
	Determine which of these are linear homogeneous recurrence relations with constant coefficients. Also, find the degree of those that are.

	(a) $a_n=3 a_(n-2)$

	(b) $a_n=3$

	(c) $a_n=a_(n-1)^2$

	(d) $a_n=a_(n-1)+2a_(n-3)$

	(e) $a_n=a_(n-1)"/"n$

	(f) $a_n=a_(n-1)+a_(n-2)+n+3$

	(g) $a_n=4a_(n-2)+5a_(n-4)+9a_(n-7)$
][

	(a) linear, homogeneous, with constant coefficients, with degree 2

	(b) linear, not homogeneous, with constant coefficients

	(c) not linear

	(d) linear, homogeneous, with constant coefficients, with degree 3

	(e) linear, homogeneous, not with constant coefficients, with degree 1

	(f) linear, not homogeneous, with constant coefficients, with degree 2

	(g) linear, homogeneous, with constant coefficients, with degree 7
]

#hw("4(g)")[
	Solve these recurrence relations together with the initial conditions given.

	(g) $a_(n+2) = -4 a_(n+1) + 5 a_n "for " n >= 0, a_0=2,a_1=8$
][
	Solving the equation $r^2 = - 4r + 5$, we obtain that $r_1=-5, r_2=1$.

	Therefore, the general solution is $a_n = c_1 (-5)^n + c_2 1^n$.

	Substitute the initial conditions, we have $-5c_1+c_2=2$ and $25c_1+c_2=8$.
	
	Solving this, we obtain $c_1=1"/"5$ and $c_2=3$. So the solution is $a_n=5^(n-1)+3^n$.
	
]

#hw("20")[
	Find the general form of the solutions of the recurrence relation $a_n=8 a_(n-2) - 16 a_(n-4)$.
][
	The characteristic polynomial is $(r^4-8r^2+16)=(r-2)^2 (r+2)^2$. So the general form of the solution is $a_n=(c_1 + c_2 n) 2^n + (c_3 + c_4 n) (-2)^n$.
]

#hw("30")[
	 
	(a) Find all solutions of the recurrence relation $a_n = −5a_(n−1) − 6a_(n−2) + 42 dot 4^n$.

  (b) Find the solution of this recurrence relation with $a_1 = 56$ and $a_2 = 278$.
][#parts(
	a: [
		Solving the characteristic equation $r^2+5r+6=0$, we obtain $r_1=-2,space r_2=-3$. So the general form of the solution is
		$
		a_n^((h))=alpha (-2)^n + beta (-3)^n
		$
		Substitute $a_n^((p))=c dot 4^n$ into the recurrence relation, we have
		$
		c dot 4^n = -5c dot 4^(n-1) - 6c dot 4^(n-2) + 42 dot 4^n
		$
		which implies that $c=16$. So $a_n^((p))=4^(n+2)$. The general solution of this recurrence relation is
		$
		a_n=alpha (-2)^n + beta (-3)^n + 4^(n+2)
		$
	],
	b:[
		Substitute the initial conditions, we have $alpha=1$ and $beta=2$, so the solution is
		$
		a_n=(-2)^n + 2 (-3)^n + 4^(n+2)
		$
	]
)]

#hw("35")[
	Find the solution of the recurrence relation $a_n=4 a_(n-1) - 3 a_(n-2) + 2^n + n + 3$ with $a_0=1$ and $a_1=4$.
][
	Solving the characteristic equation $r^2-4r+3=0$, we obtain that $r_1=3,space r_2=1$. Then we have
	$
	a_n^((h)) = alpha_1 dot 3^n + alpha_2
	$
	Substitute $a_n^((p))=c_1 dot 2^n + c_2 n^n + c_3$ into the recurrence relation, we have
	$
	& c_1 dot 2^n + c_2 n^2 + c_3\
	=& 4 (c_1 dot 2^(n-1) + c_2 (n-1)^2 + c_3 (n-1)) \
	&- 3 (c_1 dot 2^(n-2) + c_2 (n-2)^2 + c_3 (n-2))\
	&+ 2^n + n + 3
	$
	which implies that $c_1=-4,space c_2=display(-1/4),space c_3=display(-5/2)$. And by substituting initial conditions, we have $alpha_1=display(39/8),space alpha_2=display(1/8)$. So the general solution is
	$
	a_n=39/8 dot 3^n + 1/8 - 4 dot 2^n - 1/4 n^2 - 5/2 n
	$
]
