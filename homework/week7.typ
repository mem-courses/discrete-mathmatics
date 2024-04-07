#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #7",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "April 2, 2024",
)


= 6.3 Permutations and Combinations 

#hw("20")[
	How many bit strings of length 10 have	

	(a) exactly three 0s?
	
	(b) more 0s than 1s?
	
	(c) at least seven 1s?
	
	(d) at least three 1s?
][

	(a) $display(n_1 = binom(10,3) = (10 times 9 times 8)/(3 times 2 times 1) = 120)$.

	(b) $display(n_2 = 1/2(2^10 - binom(10,5)) = 386)$.

	(c) $display(n_3 = binom(10,7) + binom(10,8) + binom(10,9) + binom(10,10) = 120 + 45 + 10 + 1 = 176)$.

	(d) $display(n_4 = 2^10 - binom(10,0) - binom(10,1) - binom(10,2) = 1024 - 1 - 10 - 45 = 968)$.
]

#hw("44")[
	Find a formula for the number of ways to seat $r$ of $n$ people around a circular table, where seatings are considered the same if every person has the same two neighbors without regard to which side these neighbors are sitting on.
][

]

#hw("46")[
	How many ways are there for a horse race with four horses to finish if ties are possible?
	
	_Note_: Any number of the four horses may tie.
][

	(1) No tie: $n_1 = 4! = 24$.

	(2) Two horses tie and two not: $n_2 = C(4,2) times 3! = 36$.

	(3) Two horses tie and two tie: $n_3 = C(4,2) times C(2,2) times 2! = 6 times 1 times 2 = 12$.

	(4) Three horses tie: $n_4 = C(4,3) times 2! = 4 times 2 = 8$.

	(5) All horses tie: $n_5 = C(4,4) = 1$.

	$n = n_1 + n_2 + n_3 + n_4 + n_5 = 81$.
]

= 6.4 Binomial Coefficients and Identities

#hw("18")[
	Show that if $n$ is a positive integer, then $display(1 = binom(n,0) < binom(n, 1) < dots.c < binom(n, floor(n"/"2)) = binom(n, ceil(n"/"2)) > dots.c > binom(n,n-1) > binom(n,n) = 1)$.
][
	$
	binom(n,k+1) "/" binom(n,k) = (n!)/((k+1)! times (n-k-1)!) times (k! times (n-k)!)/(n!) = (n-k)/(k+1)
	$

	So that when $display(k<floor(n/2))$, $display(binom(n,k+1) "/" binom(n,k) < 1)$; and when $display(k>ceil(n/2))$, $display(binom(n,k+1) "/" binom(n,k) > 1)$。
	
	Especially, when $n$ is even, we have $display(ceil(n/2) = floor(n/2))$，so that
	
	$ binom(n,ceil(n"/"2)) = binom(n,floor(n"/"2)) $
	
	When $n$ is odd, assume $k=display(floor(n/2))$, then $k+1=display(ceil(n/2))$. Thus, substitute $display(k=(n-1)/2)$ into the fraction, we can obtain that
	
	$ (n-k)/(k+1) = (n-(n-1)"/"2)/((n-1)"/"2 + 1) = (2n - (n-1))/((n-1) + 2) = (n+1)/(n+1) = 1 $

	Therefore, the given inequality holds.	
]

#hw("26")[
	Prove the identity $display(binom(n,r) binom(r,k) = binom(n,k) binom(n-k,r-k))$, whenever $n,r$, and $k$ are nonnegative integers with $r<=n$ and $k<=r$.
][
	$
	binom(n,k) binom(n-k,r-k) = (n!)/(k! times (n-k)!) times ((r-k)! times (n-r)!)/((n-k)!)
	$
]

#hw("30")[
	Let $n$ and $k$ be integers with $1<=k<=n$. Show that
	$ sum_(k=1)^n binom(n,k) binom(n,k-1) = binom(2n+2,n+1)"/"2 - binom(2n,n) $
][

]

#hw("34")[
	Give a combinatorial proof that $display(sum_(k=1)^n k binom(n,k)^2 = n binom(2n-1,n-1))$. 

	_Hint_: Count in two ways the number of ways to select a committee, with $n$ members from a group of $n$ mathematics professors and $n$ computer science professors, such that the chairperson of the committee is a mathematics professor.
][]

= 6.5 Generalized Permutations and Combinations 

#hw("10")[][]

#hw("16")[][]

#hw("28")[][]

#hw("34")[][]

#hw("48")[][]

#hw("52")[][]

#hw("56")[][]

#hw("63")[][]

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