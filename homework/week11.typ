#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #11: Equivalence Relations",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "May 13, 2024",
)

= 9.5 Equivalence Relations

#hw("3")[
	Which of these relations on the set of all functions from $ZZ$ to $ZZ$ are equivalence relations? Determine the properties of an equivalence relation that the others lack.

	#parts(
		a: [${(f, g) | f(1) = g(1)}$],
		b: [${(f, g) | f(0) = g(0) or f(1) = g(1)}$],
		c: [${(f, g) | f(x) − g(x) = 1 "for all" x ∈ Z}$],
		d: [${(f, g) | "for some" C ∈ Z, "for all" x ∈ Z, f(x) − g(x) = C}$],
		e: [${(f, g) | f(0) = g(1) and f(1) = g(0)}$],
	)
][#parts(
	a: [Equivalent.],
	b: [
		Not equivalent.
		
		- Suppose that $f(0) = g(0), f(1) = h(1)$ but $g(0) != h(0)$ and $g(1) != h(1)$. Then $(g,f) in R$ and $(f,h) in R$ but $(g,h) in.not R$. This implies that the transitive property is not satisfied.
	],
	c: [
		Not equivalent.

		- Suppose that $f$ is a function from $ZZ$ to $ZZ$ with $(f,f) in R$. Then $f(x)-f(x) = 1$ should hold according to the definition of $R$. However, there is clearly a contradiction since $f(x) -f(x)$ is always zero. Therefore, the reflexive property is not satisfied.
		
		- Suppose that $(f,g) in R$, then $(g,f) in R$ holds according to the reflexive property of an equivalence relation. This implies that $f(x) - g(x) = 1 and g(x) - f(x) = 1$. But this is clearly a contradiction, as $f(x) - g(x)$ should be equal to $-(g(x) - f(x))$. Therefore, the symmetric property is not satisfied.
	],
	d: [
		Not equivalent.

		- Suppose $(f,g) in R$ holds for a non-zero $C$. Then, similiar to the proof in (c), we can argue that $R$ does not satisfy the symmetric property.
	],
	e: [
		Not equivalent.

		- Suppose $(f,g) in R$ and $(f,h) in R$. Then we have $f(0)=g(1)=h(1) and f(1) = g(0) = h(0)$. If $f(0) != f(1)$ (in general), then $g(0) != h(1) and g(1) != h(0)$. That is $(g,h) in.not R$. Therefore, the transitive property is not satisfied.
	]
)]

#hw("10")[
	Suppose that $A$ is a nonempty set and $R$ is an equivalence relation on $A$. Show that there is a function $f$ with $A$ as its domain such that $(x, y) in R$ if and only if $f(x) = f(y)$.
][
	Construct the function $f$ in this way: divied the set $A$ into several equivalence classes. Assign an unique value $y$ for each equivalence class, for each element $x$ in this equivalence class, let $f(x)=y$. This implies that for every element $x$ in each equivalence class, $f(x)=f(y)$ if and only if element $y$ is in the same equivalence class. Therefore, the function $f$ we constructed satisfies the requirements of the problem.
]

#hw("16")[
	Let $R$ be the relation on the set of ordered pairs of positive integers such that $((a, b), (c, d)) in R$ if and only if $a d = b c$. Show that $R$ is an equivalence relation
][
	- Reflexive: For any ordered pair $(a,b) in A$, we have $a b = b a$, which implies that $((a,b),(a,b)) in R$.

	- Symmetric: For any ordered pair $((a,b),(c,d)) in R$, we have $a d = b c$. This implies that $c b = d a$, so $((c,d),(a,b)) in R$.

	- transitive: For any ordered pair $((a,b),(c,d)) in R$ and $((c,d),(e,f)) in R$, we have $a d = b c$ and $c f = d e$. So $(a d)(c f) = (b c)(d e)$. As all integers are positive, we have $a f = b e$. That is $((a,b),(e,f)) in R$.
]

#hw("36(b)")[
	What is the congruence class $[4]_m$ when $m$ is 3?
][
	The answer is $S = {x | x equiv 4 space (mod space 3)} = {3k+1 | k in ZZ} = {dots.c,-5,-2,1,4,7,dots.c}$.
]

#hw("39")[
	(_Exercise 15_:  Let $R$ be the relation on the set of ordered pairs of positive integers such that $((a, b), (c, d)) in R$ if and only if $a + d = b + c$. Show that $R$ is an equivalence relation.)

	#parts(
		a: [What is the equivalence class of (1, 2) with respect to the equivalence relation in _Exercise 15_?],
		b: [
			Give an interpretation of the equivalence classes for the equivalence relation $R$ in Exercise 15. 

			_Hint_: Look at the difference $a − b$ corresponding to $(a, b)$.
		]
	)
][#parts(
	a: [
		$a+d = b + c <==> a -  b = c - d$. So the equivalence class of $(1,2)$ is $[(1,2)]_R = {(k,k+1) | k in ZZ^+}$.
	],
	b: [
		According to the conclusion obtained earlier, for an equivalence class, the value of $a-b$ should keep the same.
	]
)]

#hw("41")[
	Which of these collections of subsets are partitions of {1, 2, 3, 4, 5, 6}?

	#grid(
		columns: 2,
		parts(
			a: [${1, 2}, {2, 3, 4}, {4, 5, 6}$],
			c: [${2, 4, 6}, {1, 3, 5}$],
		),
		parts(
			b: [${1}, {2, 3, 6}, {4}, {5}$],
			d: [${1, 4, 5}, {2, 6}$],
		)
	)
][#parts(
	a: [False. As 2 and 4 appears in two subsets.],
	b: [True.],
	c: [True.],
	d: [False. As the union of all subsets is not the original set.],
)]