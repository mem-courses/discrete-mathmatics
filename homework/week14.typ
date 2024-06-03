#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  course: "Discrete Mathmatics",
  course_fullname: "Discrete Mathematics and Application",
  course_code: "211B0010",
  title: "Homework #14: Problems on Graphs",
  authors: (
    (
      name: "Yulun WU",
      email: "memset0@outlook.com",
      id: "A10",
    ),
  ),
  semester: "Spring-Summer 2024",
  date: "June 1, 2024",
)

== 10.6 Shortest-Path Problems

#hw("3")[
  Find the length of a shortest path between $a$ and $z$ in the given weighted graph.

  #align(center, image("images/2024-06-01-12-52-31.png", width: 50%))
][
  The shortest path between $a$ and $z$ is $a->c->d->e->g->h$, with a length of $16$.

  #align(center, image("images/2024-06-03-11-50-59.png", width: 54%))
]

#hw("17(a)")[
  The weighted graphs in the figures here show some major roads in New Jersey. Part (a) shows the distances between cities on these roads; part (b) shows the tolls.

  #align(center, image("images/2024-06-01-12-53-37.png", width: 50%))

  Find a shortest route in distance between Newark and Camden, and between Newark and Cape May, using these roads.
][
  The shortest route is Newark $->$ Woodbridge $->$ Trenton $->$ Camden $->$ Cape May with a total distance of 165.

  #align(center, image("images/2024-06-03-11-52-35.png", width: 53%))
]

#hw("26")[
  Solve the traveling salesperson problem for this graph by finding the total weight of all Hamilton circuits and determining a circuit with minimum total weight.

  #align(center, image("images/2024-06-01-12-55-28.png", width: 25%))
][
  All possible Hamilton circuits is listed as follows:

  - ${a,b,c,d,e}$: $3 + 10 + 6 + 1 + 7 = 27$
  - ${a,b,c,e,d}$: $3 + 10 + 5 + 1 + 4 = 23$
  - ${a,b,d,c,e}$: $3 + 9 + 6 + 5 + 7 = 30$
  - ${a,b,d,e,c}$: $3 + 9 + 1 + 5 + 8 = 26$
  - ${a,b,e,c,d}$: $3 + 2 + 5 + 6 + 4 = 20$
  - ${a,b,e,d,c}$: $3 + 2 + 1 + 6 + 8 = 20$
  - ${a,c,b,d,e}$: $8 + 10 + 9 + 1 + 7 = 35$
  - ${a,c,b,e,d}$: $8 + 10 + 2 + 1 + 4 = 25$
  - ${a,c,d,b,e}$: $8 + 6 + 9 + 2 + 7 = 32$
  - ${a,c,e,b,d}$: $8 + 5 + 2 + 9 + 4 = 28$
  - ${a,d,b,c,e}$: $4 + 9 + 10 + 5 + 7 = 35$
  - ${a,d,c,b,e}$: $4 + 6 + 10 + 2 + 7 = 29$

  Thus we can find that circuits with minimum total weight $20$ are ${a,b,e,c,d}$ and ${a,b,e,d,c}$.
]

== 10.7 Planar Graphs

#hw("7")[
  Determine whether the given graph is planar. If so, draw it so that no edges cross.

  #align(center, image("images/2024-06-01-12-56-05.png", width: 25%))
][
  The given graph is planar.

  #align(center, image("images/2024-06-03-11-54-16.png", width: 20%))
]

#hw("20")[
  Determine whether the given graph is homeomorphic to $K_(3,3)$.

  #align(center, image("images/2024-06-01-12-56-46.png", width: 45%))
][
  Remove vertices $c$ and $e$, and contract their edges. That is remove edges $(a,e)$, $(e,g)$, $(b,c)$, $(c,h)$ and add edges $(a,g)$, $(b,h)$. The resulting graph is exactly $K_(3,3)$. So the original graph is homeomorphic to $K_(3,3)$.
]

#hw("22")[
  Determine whether the given graph is homeomorphic to $K_(3,3)$.

  #align(center, image("images/2024-06-01-12-57-02.png", width: 28%))
][
  The given graph is homeomorphic to $K_(3,3)$.

  #align(center, image("images/2024-06-03-11-54-46.png", width: 30%))
]

#hw("23")[
  Use Kuratowski’s theorem to determine whether the given graph is planar.

  #align(center, image("images/2024-06-01-12-57-40.png", width: 45%))
][
  We can't find a subgraph that is homeomorphic to $K_5$ or $K_(3,3)$, so the graph is planar.

  #align(center, image("images/2024-06-03-11-54-59.png", width: 47%))
]

#hw("25")[
  Use Kuratowski’s theorem to determine whether the given graph is planar.

  #align(center, image("images/2024-06-01-12-58-03.png", width: 35%))
][
  The subgraph with $V' = {a,b,c,d,g}$ is exactly $K_5$. Therefore, according to the Kuratowski’s theorem, the graph is not planar.

  #align(center, image("images/2024-06-03-11-55-14.png", width: 42%))
]

== 10.8 Graph Coloring

#hw("3")[
  Construct the dual graph for the map shown. Then find the number of colors needed to color the map so that no two adjacent regions have the same color.

  #align(center, image("images/2024-06-01-13-01-35.png", width: 35%))
][
  The chromatic number of the given graph is $3$. One of the constructions is shown above. Since there is a subgraph ${A,B,C}$ that is $K_3$, the minimum number of coloring is at least $3$.

  #align(center, image("images/2024-06-03-11-55-33.png", width: 66%))
]

#hw("8")[
  Find the chromatic number of the given graph.

  #align(center, image("images/2024-06-01-13-02-03.png", width: 38%))
][
  $x(G) = 3$.

  #align(center, image("images/2024-06-03-11-56-03.png", width: 40%))
]

#hw("9")[
  Find the chromatic number of the given graph.

  #align(center, image("images/2024-06-01-13-02-37.png", width: 35%))
][
  $x(G) = 2$.

  #align(center, image("images/2024-06-03-11-56-20.png", width: 37%))
]

#hw("10")[
  Find the chromatic number of the given graph.

  #align(center, image("images/2024-06-01-13-02-52.png", width: 45%))
][
  $x(G) = 4$.

  #align(center, image("images/2024-06-03-11-56-37.png", width: 46%))
]

#hw("17")[
  Schedule the final exams for Math 115, Math 116, Math 185, Math 195, CS 101, CS 102, CS 273, and CS 473, using the fewest number of different time slots, if there are no students taking both Math 115 and CS 473, both Math 116 and CS 473, both Math 195 and CS 101, both Math 195 and CS 102, both Math 115 and Math 116, both Math 115 and Math 185, and both Math 185 and Math 195, but there are students in every other pair of courses.
][
  #table3(
    columns: 8,
    [Math 115],
    [Math 116],
    [Math 185],
    [Math 195],
    [CS 101],
    [CS 102],
    [CS 273],
    [CS 473],
    $a$,
    $b$,
    $c$,
    $d$,
    $e$,
    $f$,
    $g$,
    $h$,
  )
  $
    V &= {a, b, c, d, e, f, g, h}\
    E &= {(a, h), (b, h), (d, e), (d, f), (a, b), (a, c), (c, d)}\
  $
  The minimum number of periods is $5$. A possible construction is as follows:

  #table3(
    columns: 5,
    [Period 1],
    [Period 2],
    [Period 3],
    [Period 4],
    [Period 5],
    ${a,b,h}$,
    ${d,e}$,
    ${c}$,
    ${f}$,
    ${g}$,
  )
]
