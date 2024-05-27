#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #12:  Partial Orderings & Graph Introduction",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "May 20, 2024",
)

== 9.6 Partial Orderings

#hw("5")[
	Which of these are posets?

	#parts(
		columns: 4,
		a: [$(ZZ, =)$],
		b: [$(ZZ, !=)$],
		c: [$(ZZ, >=)$],
		d: [$(ZZ, divides.not)$],
	)
][
	#parts(
		columns: 2,
		a: [T.],
		b: [F. Is not reflexive and antisymmetric.],
		c: [T.],
		d: [F. Is not reflexive, antisymmetric and transitive.],
	)
]

#hw("10")[
	Determine whether the relation with the directed graph shown is a partial order.

	#align(center, image("images/2024-05-20-13-50-59.png", width: 25%))
][
	We have $c prec.eq d$ and $d prec.eq  b$ but do not have $c prec.eq b$. So it is not a partial order because it is not transitive.
]

#hw("23(a,c)")[
	Draw the Hasse diagram for divisibility on the set

	#parts(
		columns: 2,
		a: [{1, 2, 3, 4, 5, 6, 7, 8}.],
		c: [{1, 2, 3, 6, 12, 24, 36, 48}.],	
	)
][
	#parts(
		columns: 2,
		a: align(center, image("images/2024-05-20-14-29-28.png", width: 45%)),
		c: align(center, image("images/2024-05-20-14-31-14.png", width: 27%)),
	)
]

#hw("32")[
	Answer these questions for the partial order represented by this Hasse diagram.

	#align(center, image("images/2024-05-20-13-51-57.png", width: 20%))

	#parts(
		a: [Find the maximal elements.],
		b: [Find the minimal elements.],
		c: [Is there a greatest element?],
		d: [Is there a least element?],
		e: [Find all upper bounds of ${a, b, c}$.],
		f: [Find the least upper bound of ${a, b, c}$, if it exists.],
		g: [Find all lower bounds of ${f, g, h}$.],
		h: [Find the greatest lower bound of ${f, g, h}$, if it exists.],
	)
][
	#parts(
		columns: 4,
		a: [$l,m$.],
		b: [$a,b,c$.],
		c: [No.],
		d: [No.],
		e: [$l,k,m$.],
		f: [$k$.],
		g: [None.],
		h: [Not exists.],
	)
]

#hw("44")[
	Determine whether these posets are lattices.

	#parts(
		a: [$({1, 3, 6, 9, 12}, |)$],
		b: [$({1, 5, 25, 125}, |)$],
		c: [$(ZZ, >=)$],
		d: [$(cal(P)(S), supset.eq)$, where $cal(P)(S)$ is the power set of a set $S$]
	)
][
	#parts(
		a: [F. The lub of 6 and 9 is not in the given set.],
		b: [T. A finite chain is a lattice.],
		c: [T. $forall x,y in ZZ$, $"lub"(x,y)=max(x,y), "glb"(x,y)=min(x,y)$.],
		d: [T. $forall X,Y in cal(P)(S)$, that is $X,Y subset.eq S$, we have $"lub"(X,Y) = X union Y subset.eq S$, $"glb"(X,Y) = X sect Y subset.eq S$.],
	)
]

#hw("66")[
	Schedule the tasks needed to build a house, by specifying their order, if the Hasse diagram representing these tasks is as shown in the figure.

	#align(center, image("images/2024-05-20-14-00-12.png", width: 40%))
][
	The order could be: foundation $->$ framing $->$ roof $->$ exterior siding $->$ plumbing $->$ wiring $->$ flooring $->$ wall-board $->$ exterior painting $->$ carpeting $->$ interior painting $->$ interior fixtures $->$ exterior fixtures $->$ completion.
]

== 10.1 Graphs and Graph Models

#hw("1")[
	Draw graph models, stating the type of graph (from Table 1) used, to represent airline routes where every day there are
	
	- four flights from Boston to Newark,
	- two flights from Newark to Boston,
	- three flights from Newark to Miami,
	- two flights from Miami to Newark,
	- one flight from Newark to Detroit,
	- two flights from Detroit to Newark,
	- three flights from Newark to Washington,
	- two flights from Washington to Newark,
	- and one flight from Washington to Miami,
	
	with

	#parts(
		a: [an edge between vertices representing cities that have a flight between them (in either direction).],
		b: [an edge between vertices representing cities for each flight that operates between them (in either direction).],
		c: [an edge between vertices representing cities for each flight that operates between them (in either direction), plus a loop for a special sightseeing trip that takes off and lands in Miami.],
		d: [an edge from a vertex representing a city where a flight starts to the vertex representing the city where it ends.],
		e: [an edge for each flight from a vertex representing a city where the flight begins to the vertex representing the city where the flight ends.],
	)
][
	#parts(
		a: align(center, image("images/2024-05-20-16-20-46.png", width: 60%)),
		b: align(center, image("images/2024-05-20-16-23-04.png", width: 60%)),
		c: align(center, image("images/2024-05-20-16-23-42.png", width: 60%)),
		d: align(center, image("images/2024-05-20-16-24-32.png", width: 60%)),
		e: align(center, image("images/2024-05-20-16-25-39.png", width: 60%))
	)
]

#hw("3,4,5,6,7,8,9")[
	For Exercises 3–9, determine whether the graph shown has directed or undirected edges, whether it has multiple edges, and whether it has one or more loops. Use your answers to determine the type of graph in Table 1 this graph is.

	#align(center, image("images/2024-05-20-14-06-32.png", width: 60%))
][
	#let T = [Yes]
	#let F = [No]
	#table3(
		columns: (0.3fr, 1fr, 1fr, 1.5fr),
		[*\#*], [*Has multiple edges?*], [*Has loops?*], [*Type of graph*],
		3, F, F, [Simple graph], 
		4, T, F, [Multigraph],
		5, T, T, [Pseudograph],
		6, T, F, [Multigraph],
		7, F, T, [Directed graph],
		8, T, T, [Directed multigraph],
		9, T, T, [Directed multigraph],
	)
]

== 10.2 Graph Terminology and Special Types of Graphs

#hw("5")[
	Can a simple graph exist with 15 vertices each of degree five?
][
	No. Because the total degree of all vertices is $15 times 5 = 75$, which is not even. So such a simple graph is not exists.
]

#hw("24,25")[
	In Exercises 24–25 determine whether the graph is bipartite. You may find it useful to apply Theorem 4 and answer the question by determining whether it is possible to assign either red or blue to each vertex so that no two adjacent vertices are assigned the same color.

	#align(center, image("images/2024-05-20-14-07-29.png", width: 55%))
][
	
	*24.* Is bipartite. Suppose that ${a,b,d,e}$ are white and ${f,c}$ are black.

	*25.* Is not bipartite. Because we can find a triangle ${b,d,e}$.
]

#hw("44(b,f,h)")[
	Determine whether each of these sequences is graphic. For those that are, draw a graph having the given degree sequence.

	#parts(
		columns: 3,
		b: [6,5,4,3,2,1],
		f: [1,1,1,1,1,1],
		h: [5,5,4,3,2,1],
	)
][
	#parts(
		b: [Not graphic. Because the total degree is $6+5+4+3+2+1=21$, which is odd.],
		f: [Graphic. An example is $E={(1,2),(3,4),(5,6)}$.],
		h: [Not graphic. Because there are two vertices with degree 5, which means the they should connected with all other vertices. But there is a vertices with degree only 1, so such a simple graph is not exists.],
	)
]

#hw("55")[
	For which values of $n$ are these graphs regular?

	#parts(
		columns: 4,
		a: [$K_n$],
		b: [$C_n$],
		c: [$W_n$],
		d: [$Q_n$],
	)
][
	#parts(
		a: [For all $n$, $K_n$ is $(n-1)$-regular.],
		b: [For all $n>2$, $C_n$ is $2$-regular.],
		c: [$W_n$ is regular if and only if $n=3$.],
		d: [For all $n$, $Q_n$ is $n$-regular.]
	)
]

#hw("62")[
	If $G$ is a simple graph with 15 edges and $overline(G)$ has 13 edges, how many vertices does $G$ have?
][
	By solving the equation
	$
	n(n-1)/2 = 15+13,
	$
	we can dervie that $G$ has $n=8$ vertices.
]
