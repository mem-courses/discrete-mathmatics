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
][]

#hw("7")[
	Use Algorithm 1 to generate the 24 permutations of the first four positive integers in lexicographic order.
	#align(center, image("./images/6-6 algorithm-1.jpg", width: 90%))
][]

#hw("9")[
	Use Algorithm 3 to list all the 3-combinations of ${1, 2, 3, 4, 5}$.
	#align(center, image("./images/6-6 algorithm-3.jpg", width: 90%))
][]

== 8.1 Applications of Recurrence Relations 

#hw("8")[
  
	(a) Find a recurrence relation for the number of bit strings of length $n$ that contain three consecutive 0s.
  
	(b) What are the initial conditions?
  
	(c) How many bit strings of length seven contain three consecutive 0s?
][
	#parts(
		a: [
			$a_n=a_(n-1) + a_(n-3)$ with $a_0=a_1=a_2=0,a_3=1$.
		]
	)
]

#hw("10")[

	(a) Find a recurrence relation for the number of bit strings of length n that contain the string 01.

  (b) What are the initial conditions?

  (c) How many bit strings of length seven contain the string 01?
][]

#hw("26")[

	(a) Find a recurrence relation for the number of ways to completely cover a $2 times n$ checkerboard with $1 times 2$ dominoes. 
	
	_Hint_: Consider separately the coverings where the position in the top right corner of the checkerboard is covered by a domino positioned horizontally and where it is covered by a domino positioned vertically.

  (b) What are the initial conditions for the recurrence relation in part (a)?

  (c) How many ways are there to completely cover a $2 times 17$ checkerboard with $1 times 2$ dominoes?
][]

#hw("29")[
	Let $S(m, n)$ denote the number of onto functions from a set with $m$ elements to a set with $n$ elements. Show that $S(m, n)$ satisfies the recurrence relation
	$
	S(m,n)=n^m-sum_(k=1)^(n-1) C(n,k) S(m,k)
	$
	whenever $m>=n$ and $n>1$, with the initial condition $S(m,1)=1$.
][]

#hw("32")[
	In the Tower of Hanoi puzzle, suppose our goal is to transfer all n disks from peg 1 to peg 3, but we cannot move a disk directly between pegs 1 and 3. Each move of a disk must be a move involving peg 2. As usual, we cannot place a disk on top of a smaller disk.

  (a) Find a recurrence relation for the number of moves required to solve the puzzle for $n$ disks with this added restriction.

  (b) Solve this recurrence relation to find a formula for the number of moves required to solve the puzzle for $n$ disks.

  (c) How many different arrangements are there of the $n$ disks on three pegs so that no disk is on top of a smaller disk?

  (d) Show that every allowable arrangement of the $n$ disks occurs in the solution of this variation of the puzzle.
][]

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
][]

#hw("4(g)")[
	Solve these recurrence relations together with the initial conditions given.

	(g) $a_(n+2) = -4 a_(n+1) + 5 a_n "for " n >= 0, a_0=2,a_1=8$
][]

#hw("20")[
	Find the general form of the solutions of the recurrence relation $a_n=8 a_(n-2) - 16 a_(n-4)$.
][]

#hw("30")[
	 
	(a) Find all solutions of the recurrence relation $a_n = −5a_(n−1) − 6a_(n−2) + 42 dot 4^n$.

  (b) Find the solution of this recurrence relation with $a_1 = 56$ and $a_2 = 278$.
][]

#hw("35")[
	Find the solution of the recurrence relation $a_n=4 a_(n-1) - 3 a_(n-2) + 2^n + n + 3$ with $a_0=1$ and $a_1=4$.
][]
