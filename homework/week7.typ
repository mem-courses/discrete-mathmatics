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
	#parts(
		a: [
			$display(n_1 = binom(10,3) = (10 times 9 times 8)/(3 times 2 times 1) = 120)$.
			#v(0.5em)
		],
		b: [
			$display(n_2 = 1/2(2^10 - binom(10,5)) = 386)$.
			#v(0.5em)
		],
		c: [
			$display(n_3 = binom(10,7) + binom(10,8) + binom(10,9) + binom(10,10) = 120 + 45 + 10 + 1 = 176)$.
			#v(0.5em)
		],
		d: [
			$display(n_4 = 2^10 - binom(10,0) - binom(10,1) - binom(10,2) = 1024 - 1 - 10 - 45 = 968)$.
		]
	)
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
	- #box(width: 100%)[
		Proof by counting two times: Assume we have $n$ colored distinguishable balls. Among them, $k$ ones are red, $r-k$ ones are blue, and the remaining $n-r$ ones are white. Align these balls in one line and we can paint them in two ways:

		(i) Choose $r$ balls from $n$ balls, and paint the other balls white. Choose $k$ balls from these $r$ balls to paint them red, and paint the other balls blue. The number of ways is $C(n,r) C(r,k)$.

		(ii) Choose $k$ balls from $n$ balls to paint them red, and choose $r-k$ balls from the remaining $n-k$ balls to paint them blue, and eventually paint the remaining balls white. The number of ways is $C(n,k)C(n-k,r-k)$.
	]
	
	- #box(width: 100%)[
		Proof by algebra:

		$
		binom(n,r) binom(r,k)
		&= (n!)/(r! (n-r)!) times (r!)/(k! (r-k)!)
		= (n!)/(k! (r-k)! (n-r)!)
		= (n! (n-k)!)/(k! (r-k)! (n-r)! (n-k)!)\
		&= (n!)/(k! (n-k)!) times ((n-k)!)/(r! (r-k)!)
		= binom(n,k) binom(n-k,r-k)
		$
	]
]

#hw("30")[
	Let $n$ and $k$ be integers with $1<=k<=n$. Show that
	$ sum_(k=1)^n binom(n,k) binom(n,k-1) = 1/2 binom(2n+2,n+1) - binom(2n,n) $
][
	With the conclusion we proved in the *Exercise 29*, we can derive that
	$
	1/2 binom(2n+2, n+1) - binom(2n, n) = binom(2n, n+1) + binom(2n, n) - binom(2n, n) = binom(2n, n+1)
	$
	According to the Vandermonde's identity, we have:
	$
	binom(2n, n+1)
	= sum_(k=0)^(n+1) binom(n, k) binom(n, n+1-k)
	= sum_(k=1)^n binom(n, k) binom(n, n+1-k)
	= sum_(k=1)^n binom(n, k) binom(n, k-1)
	$
	And that is exactly the left side of the equation we need to prove. Thus, the equation holds.
]

#hw("34")[
	Give a combinatorial proof that $display(sum_(k=1)^n k binom(n,k)^2 = n binom(2n-1,n-1))$. 

	_Hint_: Count in two ways the number of ways to select a committee, with $n$ members from a group of $n$ mathematics professors and $n$ computer science professors, such that the chairperson of the committee is a mathematics professor.
][
	Proof by counting in two ways: Assume that we have to select a committee with $n$ members from $n$ mathematics professors and $n$ computer science professors, and the chairperson of the committee must be a mathematics professor.

	(i) Select $k$ members from $n$ mathematics professors to join the committee and select $k$ members from $n$ computer science professors not to join the committee. In this way, the number of people in the committee is exactly $n$. And for the chairperson, we have $k$ choices from selected mathematics professors. The number of ways is $k dot C(n,k)^2$.

	(ii) Select one person from $n$ mathematics professors to join the committee and to be the chairperson; Then select $n-1$ members from the remaining $2n-1$ people. The number of ways is $n dot C(2n-1,n-1)$.

	Therefore, the two ways of counting are equal, and the equation holds.
]

= 6.5 Generalized Permutations and Combinations 

#hw("10")[
	A croissant shop has plain croissants, cherry croissants, chocolate croissants, almond croissants, apple croissants, and broccoli croissants. How many ways are there to choose

  (a) a dozen croissants?
  
  (b) three dozen croissants?
  
  (c) two dozen croissants with at least two of each kind?
  
  (d) two dozen croissants with no more than two broccoli croissants?
  
  (e) two dozen croissants with at least five chocolate croissants and at least three almond croissants?
  
  (f) two dozen croissants with at least one plain croissant, at least two cherry croissants, at least three chocolate croissants, at least one almond croissant, at least two apple croissants, and no more than three broccoli croissants?
][]

#hw("16")[
	How many solutions are there to the equation
	$ x_1+x_2+x_3+x_4+x_5+x_6=29 $
	where $x_i,space i=1,2,3,4,5,6$, is a nonnegative integer such that

	(a) $x_i>1$ for $i=1,2,3,4,5,6$?

	(b) $x_1>=1, x_2>=2, x_3>=3, x_4>=4, x_5>5$ and $x_6>=6$?

	(c) $x_5<=5$?

	(d) $x_1<8$ and $x_2>8$?
][
	#parts(
		a: [
			First assign $1$ to each $x_i$, then distribute the remaining $23$ using the stars and bars method: $n_1=C(22, 5)$.
		],
		b: [
			First assign $0,1,2,3,5,5$ to $x_1,x_2,x_3,x_4,x_5,x_6$ and then use the stars and bars methods: $n_2=C(13,5)$.
		],
		c: [
			
		]
	)
]

#hw("28")[
	How many positive integers less than $1,000,000$ have exactly one digit equal to $9$ and have a sum of digits equal to $13$?
][]

#hw("34")[
	How many different strings can be made from the letters in _AARDVARK_, using all the letters, if all three $A$s must be consecutive?
][]

#hw("48")[
	A shelf holds 12 books in a row. How many ways are there to choose five books so that no two adjacent books are chosen? 
	
	_Hint_: Represent the books that are chosen by bars and the books not chosen by stars. Count the number of sequences of five bars and seven stars so that no two bars are adjacent.
][]

#hw("52")[
	How many ways are there to distribute five distinguishable objects into three indistinguishable boxes?
][
	Discuss in cases of the distribution of number of items in each box.

	(1) {5}: $n_1=C(5,5)=1$.

	(2) {4,1}: $n_2=C(5,4) dot C(1,1) = 5$.

	(3) {3,2}: $n_3=C(5,3) dot C(2,2) = 10$.

	(4) {3,1,1}: $n_4=C(5,3) dot C(2,1) dot C(1,1)"/"2! = 10$.

	(5) {2,2,1}: $n_5=C(5,2) dot C(3,2) dot C(1,1)"/"2! = 30$.

	In conclusion, the total number is $n=n_1+n_2+n_3+n_4+n_5=56$.
 ]

#hw("56")[
	How many ways are there to distribute five indistinguishable objects into three indistinguishable boxes?
][
	As we listed in *Exercise 52*, there are a total of 5 ways.
]

#hw("63")[
	Suppose that a weapons inspector must inspect each of five different sites twice, visiting one site per day. The inspector is free to select the order in which to visit these sites, but cannot visit site X, the most suspicious site, on two consecutive days. In how many different orders can the inspector visit these sites?
][]
