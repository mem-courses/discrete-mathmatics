#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
  course: "Discrete Mathmatics",
  course_fullname: "Discrete Mathematics and Application",
  course_code: "211B0010",
  title: "Homework #14 Graph",
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

  #align(center, image("images/2024-06-01-12-52-31.png", width: 60%))
][]

#hw("17(a)")[
  The weighted graphs in the figures here show some major roads in New Jersey. Part (a) shows the distances between cities on these roads; part (b) shows the tolls.

  #align(center, image("images/2024-06-01-12-53-37.png", width: 50%))

  #align(center, image("images/2024-06-01-12-53-38.png", width: 50%))

  Find a shortest route in distance between Newark and Camden, and between Newark and Cape May, using these roads.
][

]

#hw("26")[
  Solve the traveling salesperson problem for this graph by finding the total weight of all Hamilton circuits and determining a circuit with minimum total weight.

  #align(center, image("images/2024-06-01-12-55-28.png", width: 25%))
][]

== 10.7 Planar Graphs

#hw("7")[
  Determine whether the given graph is planar. If so, draw it so that no edges cross.

  #align(center, image("images/2024-06-01-12-56-05.png", width: 25%))
][]

#hw("20")[
  Determine whether the given graph is homeomorphic to $K_(3,3)$.

  #align(center, image("images/2024-06-01-12-56-46.png", width: 45%))
][]

#hw("22")[
  Determine whether the given graph is homeomorphic to $K_(3,3)$.

  #align(center, image("images/2024-06-01-12-57-02.png", width: 28%))
][]

#hw("23")[
  Use Kuratowski’s theorem to determine whether the given graph is planar.

  #align(center, image("images/2024-06-01-12-57-40.png", width: 45%))
][]

#hw("25")[
  Use Kuratowski’s theorem to determine whether the given graph is planar.

  #align(center, image("images/2024-06-01-12-58-03.png", width: 35%))
][]

== 10.8 Graph Coloring

#hw("3")[
  Construct the dual graph for the map shown. Then find the number of colors needed to color the map so that no two adjacent regions have the same color.

  #align(center, image("images/2024-06-01-13-01-35.png", width: 35%))
][

]

#hw("8")[
  Find the chromatic number of the given graph.

  #align(center, image("images/2024-06-01-13-02-03.png", width: 38%))
][

]

#hw("9")[
  Find the chromatic number of the given graph.

  #align(center, image("images/2024-06-01-13-02-37.png", width: 35%))
][]

#hw("10")[
  Find the chromatic number of the given graph.

  #align(center, image("images/2024-06-01-13-02-52.png", width: 45%))
][]

#hw("17")[
  Schedule the final exams for Math 115, Math 116, Math 185, Math 195, CS 101, CS 102, CS 273, and CS 473, using the fewest number of different time slots, if there are no students taking both Math 115 and CS 473, both Math 116 and CS 473, both Math 195 and CS 101, both Math 195 and CS 102, both Math 115 and Math 116, both Math 115 and Math 185, and both Math 185 and Math 195, but there are students in every other pair of courses.
][]
