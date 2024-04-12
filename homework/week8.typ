#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #8",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "April 9, 2024",
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