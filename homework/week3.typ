#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #3: Inference & Proofs",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "3230104585"
	),),
	semester: "Spring-Summer 2024",
	date: "March 12, 2024",
)

= Extra Homework on Normal Forms

#hw("1")[
	Give the simplest DNF and CNF of the following statements:

	(1) $((p->q) <-> (not q -> not p)) and r$

	(2) $p or (not p or (q and not q))$

	(3) $(p and (q and s)) or (not p and (q and s))$
][
	
	(1) $
	((p->q) <-> (not q -> not p)) and r
	&equiv ((not p or q) <-> (not q or not p)) and r\
	&equiv (not (not p or q) or (not q or not p)) and (not (not q or not p) or (not p or q)) and r\
	&equiv ((p and not q) or (not p or not q)) and ((p and q) or (not p or q)) and r\
	$
]

#hw("2")[
	Give the full DNF of the following statements:

	(1) $(not p or not q) -> (p <-> not q)$

	(2) $(not r and (q -> p)) -> (p -> (q or r))$

	(3) $(p -> (q and r)) and (not p -> (not q and not r))$
][]

#hw("3")[
	Give the prenex normal forms of the following statements:

	(1) $forall x (P(x) -> exists y Q(x,y))$

	(2) $forall x forall y ((exists z P(x,y,z) and exists u Q(x,u)) -> exists v Q(y,v))$
][]

#hw("4")[
	Give the prenex DNF and CNF of the following statements:

	(1) $(exists x P(x) or exists x Q(x)) -> exists x (P(x) or Q(x))$

	(2) $forall x forall y (P(x) -> Q(x,y)) -> exists y (P(y) and exists z Q(y,z))$
][]

= 1.6 Rules of Inference

#hw("12")[
	Show that the argument form with premises $(p ∧ t) → (r ∨ s)$, $q → (u ∧ t)$, $u → p$, and $¬s$ and conclusion $q → r$ is valid by first using Exercise 11 and then using rules of inference from Table 1.

	_Exercises 11_: 11.	Show that the argument form with premises $p_1, p_2, dots, p_n$ and conclusion $q → r$ is valid if the argument form with premises $p_1, p_2, dots, p_n$, $q$, and conclusion $r$ is valid.
][]

#hw("14")[
	For each of these arguments, explain which rules of inference are used for each step.
	
	(d) "There is someone in this class who has been to France. Everyone who goes to France visits the Louvre. Therefore, someone in this class has visited the Louvre."
][]

#hw("18")[
	What is wrong with this argument?
	
	Let $S(x, y)$ be "$x$ is shorter than $y$." Given the premise $∃s S(s, "Max")$, it follows that $S("Max", "Max")$. Then by existential generalization it follows that $∃x S(x, x)$, so that someone is shorter than himself.
][]

#hw("24")[
	Identify the error or errors in this argument that supposedly shows that if $∀x(P(x) ∨ Q(x))$ is true then $∀x P(x) ∨ ∀x Q(x)$ is true.
	
	1.	$∀x(P(x) ∨ Q(x))$	Premise
	2.	$P(c) ∨ Q(c)$	Universal instantiation from (1)
	3.	$P(c)$	Simplification from (2)
	4.	$∀x P(x)$	Universal generalization from (3)
	5.	$Q(c)$	Simplification from (2)
	6.	$∀x Q(x)$	Universal generalization from (5)
	7.	$∀x(P(x) ∨ ∀x Q(x))$ Conjunction from (4) and (6)
][]

#hw("29")[
	Use rules of inference to show that if $∀x(P(x) ∨ Q(x))$, $∀x(¬Q(x) ∨ S(x))$, $∀x(R(x) → ¬S(x))$, and $∃x¬P(x)$ are true, then $∃x¬R(x)$ is true.
][]

#hw("34")[
	The Logic Problem, taken from _WFF’N PROOF, The Game of Logic_, has these two assumptions:
	
	1.	"Logic is difficult or not many students like logic."
	2.	"If mathematics is easy, then logic is not difficult."
	#fake_par
	
	By translating these assumptions into statements involving propositional variables and logical connectives, determine whether each of the following are valid conclusions of these assumptions:

	(a) That mathematics is not easy, if many students like logic.
][]

= 1.7 Introduction to Proofs 

= 1.8 Proof Methods and Strategy

#hw("24")[][]