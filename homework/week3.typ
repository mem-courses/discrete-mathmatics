#import "../template.typ": *
#import "../functions.typ": *

#show: project.with(
	course: "Discrete Mathmatics",
	course_fullname: "Discrete Mathematics and Application",
	course_code: "211B0010",
	title: "Homework #3: Inference & Proofs & Sets",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "A10"
	),),
	semester: "Spring-Summer 2024",
	date: "March 12, 2024",
)

#let T = math.upright("T")
#let TT = math.upright("T")
#let F = math.upright("F")
#let FF = math.upright("F")
#let PP = math.cal("P")

= Extra Homework on Normal Forms

#hw("1")[
	Give the simplest DNF and CNF of the following statements:

	1. $((p->q) <-> (not q -> not p)) and r$

	2. $p or (not p or (q and not q))$

	3. $(p and (q and s)) or (not p and (q and s))$
][
	1. #[
		Let's simplify by steps:

		(1) $((p->q) <-> (not q -> not p)) and r$, the original statement.

		(2) $equiv TT and r$, because $(p->q) <-> (not q -> not p)$ is a tautology by contrapositive law.

		(3) $equiv r$, by identity laws.

		Overall, the simplest DNF and CNF of the original statement are both $r$.
	]

	2. #[
		Let's simplify by steps:

		(1) $p or (not p or (q and not q))$ the original statement.

		(2) $equiv p or (not p or FF)$, because $q and not q$ always holds false by negation laws.

		(3) $equiv p or not p$, because negation laws.

		Overall, the simplest DNF and CNF of the original statement are both $TT$.
	]
	
	3. #[
		Let's simplify by steps:

		(1) Let $r = q and s$.

		(2) The original statement can be simplified as "$(p and r) or (not p and r)$".

		(3) $equiv (p or not p) and (r or r) and (p or r) and (not p or r)$, by distributive laws.

		(4) $equiv r$, because $r$ must be true, otherwise the hole statement is false.

		(5) $equiv q and s$, by the definition of $r$.

		Overall, the simplest DNF and CNF of the original statement are both $q and s$.
	]
]

#hw("2")[
	Give the full DNF of the following statements:

	1. $(not p or not q) -> (p <-> not q)$

	2. $(not r and (q -> p)) -> (p -> (q or r))$

	3. $(p -> (q and r)) and (not p -> (not q and not r))$
][
	1. #[
		Get the full DNF by truth table:
		#table3(
			columns: (1fr, 1fr, 2fr, 2fr, 4fr),
			$p$, $q$, $not p or not q$, $p<-> not q$, $(not p or not q) -> (p <-> not q)$,
			T, T, F, F, T,
			T, F, T, T, T,
			F, T, T, T, T,
			F, F, T, F, F,
		)
		Then, we can derive:
		$
		(not p or not q) -> (p <-> not q)
		equiv (p and q) or (p and not q) or (not p and q)
		$
	]

	2. #[
		Get the full DNF by truth table:

		#table3(
			columns: (0.8fr, 0.8fr, 0.8fr, 2fr, 2fr, 3.5fr, 3fr, 7fr),
			$p$, $q$, $r$, $q->p$, $q or r$, $not r and (q -> p)$, $p -> (q or r)$, $(not r and (q -> p)) -> (p -> (q or r))$,
			[T], [T], [T], [T], [T], [F], [T], [T],
			[T], [T], [F], [T], [T], [T], [T], [T],
			[T], [F], [T], [T], [T], [F], [T], [T],
			[T], [F], [F], [T], [F], [T], [F], [F],
			[F], [T], [T], [F], [T], [F], [T], [T],
			[F], [T], [F], [F], [T], [T], [T], [T],
			[F], [F], [T], [T], [T], [F], [T], [T],
			[F], [F], [F], [T], [F], [F], [T], [T],
		)

		Then, we can derive:

		$
		(not r and (q -> p)) -> (p -> (q or r)) equiv
		& (p and q and r) or (p and q and not r) or (p and not q and r) or (not p and q and r)\
		& quad (not p and q and not r) or (not p and not q and r) or (not p and not q and not r)
		$
	]

	3. #[
		Get the full DNF by truth table:

		#table3(
			columns: (1fr, 1fr, 1fr, 2fr, 3fr, 5fr),
			$p$, $q$, $r$, $p -> (q and r)$, $not p -> (not q and not r)$, $(p -> (q and r)) and (not p -> (not q and not r))$,
			[T], [T], [T], [T], [T], [T],
			[T], [T], [F], [F], [T], [F],
			[T], [F], [T], [F], [T], [F],
			[T], [F], [F], [F], [T], [F],
			[F], [T], [T], [T], [F], [F],
			[F], [T], [F], [T], [F], [F],
			[F], [F], [T], [T], [F], [F],
			[F], [F], [F], [T], [T], [T],
		)

		Then, we can derive:

		$
		(p -> (q and r)) and (not p -> (not q and not r))
		equiv (p and q and r) or (not p and not q and not r)
		$
	]
]

#hw("3")[
	Give the prenex normal forms of the following statements:

	1. $forall x (P(x) -> exists y Q(x,y))$

	2. $forall x forall y ((exists z P(x,y,z) and exists u Q(x,u)) -> exists v Q(y,v))$
][
	1. #[
		$
		forall x (P(x) -> exists y Q(x,y))
		equiv& forall x (not P(x) or exists y Q(x, y))\
		equiv& forall x exists y (not P(x) or Q(x,y))
		$
	]

	2. #[
		$
		&forall x forall y ((exists z P(x,y,z) and exists u Q(x,u)) -> exists v Q(y,v))\
		equiv& forall x forall y (not (exists z P(x,y,z) and exists u Q(x,u)) or exists v Q(y,v))\
		equiv& forall x forall y (forall z not P(x,y,z) or forall u not Q(x,u) or exists v Q(y,v))\
		equiv& forall x forall y forall z forall u exists v (not P(x,y,z) or not Q(x,u) or Q(y,v))\
		$
	]
]

#hw("4")[
	Give the prenex DNF and CNF of the following statements:

	1. $(exists x P(x) or exists x Q(x)) -> exists x (P(x) or Q(x))$

	2. $forall x forall y (P(x) -> Q(x,y)) -> exists y (P(y) and exists z Q(y,z))$
][
	1. #[
		Let us obtain the prenex normal form firstly,

		$
		&(exists x P(x) or exists x Q(x)) -> exists x (P(x) or Q(x))\
		equiv& not (exists x P(x) or exists x Q(x)) or exists x (P(x) or Q(x))\
		equiv& (forall x not P(x) and forall y not Q(y)) or exists z (P(z) or Q(z))\
		equiv& forall x forall y exists z ((not P(x) and not Q(y)) or P(z) or Q(z))
		$

		This statement satisfies the property of DNF. And then we can get its CNF by applying the distributive law:

		$
		&forall x forall y exists z ((not P(x) and not Q(y)) or P(z) or Q(z))\
		equiv& forall x forall y exists z ((not P(x) or P(z) or Q(z)) and (not Q(y) or P(z) or Q(z)))
		$
	]

	2. #[
		Let us obtain the prenex normal form firstly,
		$
		& forall x forall y (P(x) -> Q(x,y)) -> exists y (P(y) and exists z Q(y,z))\
		equiv& (forall x forall y (P(x) -> Q(x,y))) -> (exists u (P(u) and exists v Q(u,v)))\
		equiv& not (forall x forall y (not P(x) or Q(x,y))) or (exists u (P(u) and exists v Q(u,v)))\
		equiv& (exists x exists y (P(x) and not Q(x,y))) or (exists u (P(u) and exists v Q(u,v)))\
		equiv& exists x exists y exists u exists v ((P(x) and not Q(x,y)) or (P(u) and Q(u,v)))\
		$

		Luckily, this statement satisfies the property of DNF again. Then, we can get its CNF by applying the distributive law:
		$
		& exists x exists y exists u exists v ((P(x) and not Q(x,y)) or (P(u) and Q(u,v)))\
		equiv& exists x exists y exists u exists v ((P(x) or P(u)) and (P(x) or Q(u,v)) and (not Q(x,y) or P(u)) and (not Q(x,y) or Q(u,v)))
		$

	]
]

= 1.6 Rules of Inference

#hw("12")[
	Show that the argument form with premises $(p ∧ t) → (r ∨ s)$, $q → (u ∧ t)$, $u → p$, and $¬s$ and conclusion $q → r$ is valid by first using Exercise 11 and then using rules of inference from Table 1.

	_Exercises 11_: Show that the argument form with premises $p_1, p_2, dots, p_n$ and conclusion $q → r$ is valid if the argument form with premises $p_1, p_2, dots, p_n$, $q$, and conclusion $r$ is valid.
][
	Proof:

	(1) $(p and t) -> (r or s)$, premise.

	(2) $q -> (u and t)$, premise.

	(3) $u->p$, premise.

	(4) $not s$, premise.

	(5) $(p and t) -> r$, by simplification from (1) and (4).

	(6) $not p or not t or r$, by implication law from (5).

	(7) $not u or p$, by implication law from (6).

	(8) $not u or not t or r$, by addiction from (6) and (7).

	(9) $(u and t) -> r$, by implication law from (8).

	(10) $q -> r$, by hypothetical syllogism from (9).

	Overall, the conclusion is proved.
]

#hw("14")[
	For each of these arguments, explain which rules of inference are used for each step.
	
	(d) "There is someone in this class who has been to France. Everyone who goes to France visits the Louvre. Therefore, someone in this class has visited the Louvre."
][
	Let $P(x)$: "$x$ has been to France". $Q(x)$: "$x$ has been to Louvre". 

	The steps of the argument are:

	(1) $(exists x P(x)) and (forall x P(x) -> Q(x))$, the formalized premises.

	(2) $P(c) and (P(c) -> Q(c))$ for some element $c$, by existential instantiation and universal instantiation.

	(3) $Q(c)$ for some element $c$, by modus ponens.
	
	(4) $exists x Q(x)$, by existential generalization. And this is the conclusion made by given statement.
]

#hw("18")[
	What is wrong with this argument?
	
	Let $S(x, y)$ be "$x$ is shorter than $y$." Given the premise $∃s S(s, "Max")$, it follows that $S("Max", "Max")$. Then by existential generalization it follows that $∃x S(x, x)$, so that someone is shorter than himself.
][
	The argument is wrong. The step second is incorrect. The given premise should promise that $"Max"$ is not in the domain of $x$. Otherwise, "$x$ is shorten than $"Max"$" is not valid. Therefore, the total argument is invalid and leads to a wrong conclusion.
]

#hw("24")[
	Identify the error or errors in this argument that supposedly shows that if $∀x(P(x) ∨ Q(x))$ is true then $∀x P(x) ∨ ∀x Q(x)$ is true.
	
	(1) $∀x(P(x) ∨ Q(x))$	Premise
	
	(2) $P(c) ∨ Q(c)$	Universal instantiation from (1)
	
	(3) $P(c)$	Simplification from (2)
	
	(4) $∀x P(x)$	Universal generalization from (3)
	
	(5) $Q(c)$	Simplification from (2)
	
	(6) $∀x Q(x)$	Universal generalization from (5)
	
	(7) $∀x(P(x) ∨ ∀x Q(x))$ Conjunction from (4) and (6)
][
	$P(c) or Q(c)$ holding true doesn't imply $P(c)$ and $Q(c)$ both holding true. Therefore, the step (3) and (5) are incorrect, and the conclusion (7) is also incorrect.
]

#hw("29")[
	Use rules of inference to show that if $∀x(P(x) ∨ Q(x))$, $∀x(¬Q(x) ∨ S(x))$, $∀x(R(x) → ¬S(x))$, and $∃x¬P(x)$ are true, then $∃x¬R(x)$ is true.
][
	Proof: 

	(1) $exists x not P(x)$: premise.

	(2) $P(c)$ for some element $c$: existential instantiation from (1).

	(3) $forall x (P(x) or Q(x))$, $forall x (not Q(x) or S(x))$, $forall x (R(x) -> not S(x))$: premise.

	(4) $(P(c) or Q(c)) and (not Q(c) or S(c)) and (R(c) -> not S(c))$ for any element $c$: universal instantiation from (3)

	(5) $P(c) and (P(c) or Q(c)) and (not Q(c) or S(c)) and (R(c) -> not S(c))$: conjunction from (2) and (4).

	(6) $P(c) and Q(c) and (not Q(c) or S(c)) and (not R(c) or not S(c))$: simplification from (5)

	(7) $P(c) and Q(c) and S(c) and not R(c)$: simplification from (6)

	(8) $not R(c)$: simplification from (7)

	(9) $exists x not R(x)$: existential generalization from (8)

	Overall, the conclusion $exists x not R(x)$ is proved.
]

#hw("34(a)")[
	The Logic Problem, taken from _WFF’N PROOF, The Game of Logic_, has these two assumptions:
	
	1.	"Logic is difficult or not many students like logic."
	2.	"If mathematics is easy, then logic is not difficult."
	#fake_par
	
	By translating these assumptions into statements involving propositional variables and logical connectives, determine whether each of the following are valid conclusions of this assumption: "That mathematics is not easy, if many students like logic."
][
	Let $p$: "logic is difficult"; $q$: "many student like logic"; $r$: "mathematics is easy".

	Then the assumption can be formalized as:

	(1) $p or not q$

	(2) $r -> not p$

	The conclusion we want to prove is "$q -> not r$".

	(3) $q -> p$: derived from (1)

	(4) $p -> not r$: contrapositive from (2)

	(5) $q -> not r$: hypothetical syllogism from (3) and (4)

	Overall, the conclusion is proved.
]

= 1.7 Introduction to Proofs 

#hw("7")[
	Use a direct proof to show that every odd integer is the difference of two squares.
	
	_Hint_: Find the difference of the squares of $k + 1$ and $k$ where $k$ is a positive integer.
][
	Proof:

	(1) For any odd integer $n$ is an odd integer, there exists a positive integer $k$ such that $n=2k-1$.
	
	(2) $k^2-(k-1)^2=2k-1$ for any positive integer $k$.

	(3) $n=2k-1=k^2-(k-1)^2$, obtained from (1) and (2), which means that for any odd integer $n$, it can be represented as the difference of two squares.
]

#hw("8")[
	Prove that if $n$ is a perfect square, then $n + 2$ is not a perfect square.
][
	Proof the given proposition by contradiction.

	If both $n$ and $n+2$ are perfect squares, then there exists two positive integers $x$ and $y$ such that $n=x^2$ and $n+2=y^2$. Therefore, $(n+2)-n = 2 = y^2 - x^2 = (x+y) (x-y)$.
	
	Since both $x$ and $y$ are integers, then $x+y$ and $x-y$ are also integers. Because the number $2$ is a prime, and can only equal to the product of $1$ and $2$, so that one element of ${x+y, x-y}$ is 2 and the other is 1.
	
	Therefore, $display(x = ((x+y)+(x-y))/2)=1.5$, isn't an integer. This is a contradiction, so the assumption that both $n$ and $n+2$ are perfect squares is false. Thus, if $n$ is a perfect square, then $n+2$ is not a perfect square.
]

#hw("36")[
	Is this reasoning for finding the solutions of the equation $sqrt(2 x^2 - 1) = x$ correct?

	(1) $sqrt(2 x^2 - 1) = x$ is given;

	(2) $2 x^2 - 1 = x^2$, obtained by squaring both sides of (1);

	(3) $x^2-1 = 0$, obtained by subtracting $x^2$ from both sides of (2);

	(4) $(x+1)(x-1)=0$, obtained by factoring the left-hand side of $x^2-1$.

	(5) $x=1$ or $x=-1$; which follows because $a b = 0$ implies that $a=0$ or $b=0$.
][
	No, the reasoning is incorrect.

	In the given conditions, $x = sqrt(2 x^2 - 1)$, which implies that $x >= 0$ holds. But in the step (2), if we simply square both sides of equation, we will lose this restriction. Therefore, we should add $x>=0$ as a extra condition during the step (2). Thus, $x=-1$, the wrong solution, will be excluded. 
]

= 1.8 Proof Methods and Strategy

#hw("24")[
	Use forward reasoning to show that if $x$ is a nonzero real number, then $x^2+1"/"x^2>=2$.
	
	_Hint_: Start with the inequality $(x − 1"∕"x)^2 >= 0$, which holds for all nonzero real numbers $x$.
][
	Proof:

	(1) $display((x-1/x)^2>=0)$, which holds for all nonzero real numbers $x$.

	(2) $display(x^2-2+1/x^2 >= 0)$, by expanding the left-hand side of (1).

	(3) $display(x^2+1/x^2 >= 2)$, by adding $2$ to both sides of (2).

	Overall, The given proposition is proved.
]

#hw("26")[
	The quadratic mean of two real numbers $x$ and $y$ equals $sqrt((x^2+y^2)"/"2)$. By computing the arithmetic and quadratic means of different pairs of positive real numbers, formulate a conjecture about their relative sizes and prove your conjecture.
][
	For all pairs of positive real numbers, their quadratic mean if greater than or equal to their arithmetic mean.

	Proof:
	
	(1) $(x-y)^2 >= 0$ holds for all real numbers $x$ and $y$.

	(2) $(x+y)^2 >= 0$ also holds for all real numbers $x$ and $y$.

	(3) $x^2 - 2x y + y^2 >= 0$, by expanding the left-hand side of (1).

	(4) $2x^2 + 2y^2 >= x^2 + 2 x y + y^2$, by adding $(x+y)^2$ to both side of (2).

	(5) $display((x^2+y^2)/2 >= (x^2+2x y+y^2)/4)$, by dividing both sides of (3) by $4$.

	(6) Since $(x+y)^2>=0$, $display((x^2+2x y+y^2)/2) >= 0$ also holds.

	(7) $display(sqrt((x^2+y^2)/2)) >= display((x+y)/2)$, by taking square root of both sides of (5). So the proposition is proved.
]


= 2.1 Sets

#hw("13")[
	Determine whether each of these statements is true or false.

	(a) $x in {x}$
	
	(b) ${x} subset.eq {x}$
	
	(c) ${x} in {x}$

	(d) ${x} in {{x}}$

	(e) $emptyset subset.eq {x}$

	(f) $emptyset in {x}$
][
	The answer is TTFTTF.
]

#hw("20")[
	Find two sets $A$ and $B$ such that $A in B$ and $A subset.eq B$.
][
	Let $A = {1}$ and $B={1,{1}}$, so that $A in B$ and $A subset.eq B$ are both true. 
]

#hw("24")[
	Can you *conclude(v. 断定)* that $A = B$ if $A$ and $B$ are two sets with the same power set?
][
	Let us proof by contraposition:

	(1) Assume $A!=B$ and $PP(A) = PP(B)$.

	(2) WLOG, assume that $abs(A) <= abs(B)$. So that there exists an element $x$ satisfying $x in B$ but $x in.not A$.

	(3) Therefore, ${x} in PP(B)$ but ${x} in.not PP(A)$, which means $PP(A) != PP(B)$, that is a contradiction.

	Overall, the conclusion $PP(A) = PP(B) -> A=B$ is proved.
]

#hw("26")[
	Determine whether each of these sets is the power set of a set, where $a$ and $b$ are distinct elements.

	(a) $emptyset$

	(b) ${emptyset, {a}}$

	(c) ${emptyset, {a}, {emptyset, a}}$

	(d) ${emptyset, {a}, {b}, {a, b}}$
][

	(a) F. The size of a power set is at least $2^0=1$, so that $emptyset$ must not be a power set.

	(b) T. ${emptyset, {a}} = PP({a})$.

	(c) F. The size of a power set is $2^k$, where $k$ is a non-negative integer representing the size of the original set. Since $|{emptyset, {a}, {emptyset, a}}| = 3$, so this set is not a power set.

	(d) T. ${emptyset, {a}, {b}, {a, b}} = PP({a,b})$
]

#hw("34(a)(c)")[
	Let $A = {a, b, c}$, $B = {x, y}$, and $C = {0, 1}$. Find

	(a) $A times B times C$

	(c) $C times A times B$
][

	(a) $A times B times C = {a x 0, a x 1, a y 0, a y 1, b x 0, b x 1, b y 0, b y 1, c x 0, c x 1, c y 0, c y 1}$.

	(c) $C times A times B = {0 a x, 1 a x, 0 a y, 1 a y, 0 b x, 1 b x, 0 b y, 1 b y, 0 c x, 1 c x, 0 c y, 1 c y}$.
]

= 2.2 Set Operations

#hw("19")[
	Show that if $A$, $B$, and $C$ are sets, then $overline(A ∩ B ∩ C) = overline(A) ∪ overline(B) ∪ overline(C)$.

	(a) by showing each side is a subset of the other side.

	(b) using a membership table.
][

	(a) First, we will show $overline(A ∩ B ∩ C) subset.eq overline(A) ∪ overline(B) ∪ overline(C)$ by the following steps:
	
	#indent-box[
		(a.1.1) Assume $x$ is in $overline(A ∩ B ∩ C)$
		
		(a.1.2) $x$ is not in $A sect B sect C$, by defintion of sets' complement.

		(a.1.3) $not (x in A and x in B and x in C)$ holds, by definition of intersection.

		(a.1.4) $x in.not A or x in.not B or x in.not C$, by De Morgan's law.

		(a.1.5) $x in overline(A) or x in overline(B) or x in overline(C)$, by definition of complement.

		(a.1.6) $x in (overline(A) union overline(B) union overline(C))$, by definition of union.

		(a.1.7) Therefore, $overline(A ∩ B ∩ C) subset.eq overline(A) ∪ overline(B) ∪ overline(C)$ is proved.

		Second, we will show $overline(A) ∪ overline(B) ∪ overline(C) subset.eq overline(A ∩ B ∩ C)$ also holds by following steps:

		(a.2.1) Assume $x$ is in $overline(A) ∪ overline(B) ∪ overline(C)$.

		(a.2.2) $x in overline(A) or x in overline(B) or x in overline(C)$, by definition of union.

		(a.2.3) $x in.not A or x in.not B or x in.not C$, by definition of complement.

		(a.2.4) $not (x in A and x in B and x in C)$, by De Morgan's law.

		(a.2.5) $x in.not (A sect B sect C)$, by definition of intersection.

		(a.2.6) $x in (A sect B sect C)$, by definition of complement.

		(a.2.7) Therefore, $overline(A) ∪ overline(B) ∪ overline(C) subset.eq overline(A ∩ B ∩ C)$ is proved.

		Overall, both sides are the subset of each other, so the equality is proved.
	]

	(b) The membership table is as follows:

	#indent-box[
		#let T = math.upright("1")
		#let F = math.upright("0")

		#table3(
			columns: (1fr, 1fr, 1fr, 3fr, 3fr, 3fr),
			$A$, $B$, $C$, $A sect B sect C$, $overline(A sect B sect C)$, $overline(A) union overline(B) union overline(C)$,
			T, T, T, T, F, F,
			T, T, F, F, T, T,
			T, F, T, F, T, T,
			T, F, F, F, T, T,
			F, T, T, F, T, T,
			F, T, F, F, T, T,
			F, F, T, F, T, T,
			F, F, F, F, T, T,
		)

		From the membership table we can easily derive that $overline(A ∩ B ∩ C) = overline(A) ∪ overline(B) ∪ overline(C)$.
	]
]

#hw("54")[
	Let $A_i = {dots, -2, -1, 0, 1, dots, i}$. Find 
	
	#v(0.5em) (a) $display(union.big_(i=1)^n A_i)$#v(0.5em)

	#v(0.5em) (b) $display(sect.big_(i=1)^n A_i)$ #v(0.5em)
][

	(a) $display(union.big_(i=1)^n A_i) = A_n$. Since $A_i subset.eq A_(i+1)$, so that $A_i union A_(i+1) = A_(i+1)$.

	#v(1em)

	(b) $display(sect.big_(i=1)^n A_i) = A_1$. Since $A_i subset.eq A_(i+1)$, so that $A_i sect A_(i+1) = A_i$.
]

#hw("63(c)")[
	Show how bitwise operations on bit strings can be used to find these combinations of $A = {a, b, c, d, e}$, $B = {b, c, d, g, p, t, v}$, $C = {c, e, i, o, u, x, y, z}$, and $D = {d, e, h, i, n, o, t, u, x, y}$.

	(c) $(A union D) sect (B union C)$
][
	Let $U$: the set of all lowercase English letters. So that the bitset of given sets are:

	- $A$: 11111000000000000000000000
	- $B$: 01110010000000010001010000
	- $C$: 00101000100000100000100111
	- $D$: 00011001100001100001100110

	With the help of calculator, we can get the result bit string is 01111000100000100001100110, representing the set ${b,c,d,e,i,o,t,u,x,y}$.
]