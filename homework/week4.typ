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

#hw("34")[
	Suppose that $g$ is a function from $A$ to $B$ and $f$ is a function from $B$ to $C$. Prove each of these statements.
	
	(a) If $f circ g$ is onto, then $f$ must also be onto.
	
	(b) If $f circ g$ is one-to-one, then $g$ must also be one-to-one.
	
	(c) If $f circ g$ is a bijection, then $g$ is onto if and only if $f$ is one-to-one
][]

#hw("40(a)")[
	Let $f(x) = a x + b$ and $g(x) = c x + d$, where $a$, $b$, $c$, and $d$ are constants. Determine necessary and sufficient conditions on the constants $a$, $b$, $c$, and $d$ so that $f circ g = g circ f$.
][]

#hw("72")[
	
][]

#hw("74(c,d)")[][]

= 2.5	Cardinality of Sets

#hw("4(c,d)")[][]
#hw("28")[][]
#hw("36")[][]
#hw("38")[][]

= 3.1

#hw("2")[][]
#hw("4")[][]

= 3.2

#hw("8(c)")[][]
#hw("26(a)")[][]
#hw("54")[][]
#hw("56")[][]

= 3.3

#hw("7")[][]
#hw("10")[][]
