---
title: "Prime and Maximal Ideals"
date: 2018-08-26T18:21:50-07:00
draft: false
tags:
- math
- algebra
---

Consider the natural numbers $\mathbb{N}$ and order
them by divisibility: $a \leq b$ whenever $b$ divides $a$.
For example if I give you the set of numbers
$$\{6,12,18,24,30\}$$
Then the "largest" number in terms of divisibility is $6$.

<!--more-->


This ordering may seem strange; did we just reverse the "usual" ordering on
natural numbers? Not quite. While for any $a,b \in \mathbb{N}$ at least one of
$a \leq b$ or $b \leq a$ is true, if we consider the numbers $7$ and $10$ under
divisibility ordering we see that neither $7 \mid 10$ nor $10 \mid 7$. This
difference is why we call divisibility a **partial ordering** (not every pair
of elements are comparable) while the usual order is a **total ordering**.

Maximal elements, that is elements $m$ where for any comparable $a$ we have
$a \leq m$, become much more interesting in this new ordering. In fact,
if we exclude $1$ from the natural numbers, we get:

**Proposition**: Under divisibility ordering, the maximal elements
of $\mathbb{N} \setminus \\{1\\}$ are prime.


**Proof**: Since $n \leq m$ means that $m$ divides $n$, a non-maximal
$n$ is not prime. Conversely, if $m$ is maximal then there doesn't
exist any $n$ such that $m \leq n$. In other words, $m$ has
no divisors hence $m$ is prime.
$\square$

## Generalizing to Rings

The above divisibility relation is kind of strange: under divisibility ordering
$a \leq b$ means that $a \mid b$, but this menas that $b$ is a multiple of $a$
so under the "usual" ordering $a \geq b$!

The reason why we reversed the ordering is because this relationship
is because in the context of subrings ordered by inclusion,
the maximal elements are prime.

To make the generalization, for $n \in \mathbb{N}$ consider
the set consisting of multiples of $n$
$$n \mathbb{Z} = \{n r : r \in \mathbb{Z}\}$$
It's obvious this is a subset of the ring $\mathbb{Z}$, and
it's not hard to see that in fact this is an ideal.

If $m \mid n$, then $n = m p$ for some $p \in \mathbb{Z}$ and hence
$$x \in n \mathbb{Z} \implies \exists r \in \mathbb{Z} : x = n r \implies x = m (p r) \in m \mathbb{Z}$$
so we have the containment $m \mathbb{Z} \subset n \mathbb{Z}$.
Letting $\leq$ denote partial ordering under inclusion, we get that
$m \mid n \iff m \mathbb{Z} \leq n \mathbb{Z}$.

The motivation section's result can now be stated in its full generality:

**Theorem**: Let $R$ be a commutative ring with identity, and let $M \trianglelefteq R$ be a maximal proper ideal.
Then $M$ is prime.

**Proof**: Suppose $x,y \in R$, and $xy \in M$. Towards contradiction, suppose
neither $x \not\in M$ nor $y \not\in M$. Then by maximality of $M$,
$$(x) + M = R = (y) + M$$
So $1 = a x + m_1 = b y + m_2$ for some $a,b \in R$. Consider the product
$$1 \cdot 1 = (a x + m\_1)(b y + m\_2) = a b \underbrace{x y}\_{\in M} + a x m\_2 + b y m\_1 + m\_1 m\_2$$
Since $M$ is an ideal, all the summands are $\in M$ hence we have $1 \in M$.
But if an ideal contains $1$, then $R \cdot 1 = R \subset M$, contradicting
that $M$ is a proper ideal. 
$\square$

## Another application of the proof technique

The skeleton for the proof technique we used above goes something like:
 * Assume towards contradiction that $M$ is not prime, and let $xy \in M$ be a witness
 * Use maximality of $M$ to argue that elements not originally in $M$
   (and whose product should not be either) are in $(x) + M$ and $(y) + M$
 * Since we assumed $xy \in M$, multiply the elements together
 * Show that this product is in $M$, yielding a contradiction

It turns out, mixing maximality and primality in can get us pretty far. Here's an important
result from algebraic geometry:

**Theorem**: The intersection of all prime ideals of a ring $R$ is the set of the nilpotent elements of $R$.
That is:
$$\bigcap\_{\substack{\mathfrak{p} \trianglelefteq R \\\\ \mathfrak{p}~\text{prime}}} \mathfrak{p}
= \\{ r \in R : r^n = 0~\text{for some}~n \geq 1\\}$$

**Proof**: If $r$ is nilpotent, then $r^n = 0 \in \mathfrak{p}$ because every ideal contains $0$.
But since $\mathfrak{p}$ is prime, $r = r r^{n-1} \in \mathfrak{p}$ means that either $r \in \mathfrak{p}$
(done) or $r^{n-1} \in \mathfrak{p}$ (induct).

In the other direction, suppose $r$ is not nilpotent so all of its powers are non-zero.
Consider the set of ideals of $R$ which don't contain any power of $r$
$$S = \\{I \trianglelefteq R : \\{r^n : n \geq 1 \\} \cap I = \emptyset \\}$$
Clearly $(0) \in S$, so $S$ is non-empty. We'd like to select a maximal element of $S$
ordered by inclusion, but the problem is that there could be infinitely many ideals which satisfy this.

To make this maneuver sound, we will appeal to [Zorn's Lemma](https://en.wikipedia.org/wiki/Zorn%27s_lemma).
Partially ordering $S$ by inclusion, let $(I\_\alpha)\_{\alpha \in A}$ be an ascending chain in $S$.
Consider $I = \cup\_\alpha I\_\alpha$. It's not hard to show that $I$ is an ideal (exercise: prove this,
since unions of ideals are not always ideals you will need the fact that this is an ascending chain).
Moreover, as a union of sets not containing powers of $r$, $I$ contains no power of $r$. Hence,
$I \in S$ is an upper bound for this chain. This checks the conditions for Zorn's lemma, so we may
conclude there exists a maximal $M \in S$.

Now we apply the skeleton from before to prove $M$ is prime. Suppose otherwise, and let $xy \in M$
but $x \not\in M$ and $y \not\in M$. By maximality, neither $(x) + M$ nor $(y) + M$ are in $S$,
so both must contain powers of $r$ i.e.
$$r^n = a x + m_1 \qquad\text{and}\qquad r^m = b y + m_2$$
Multiplying
$$r^{n+m} = ab x y + a x m\_2 + b y m\_1 + m\_1 m\_2$$
Since $M$ is an ideal, the right-hand side is in $M$. But this means that $r^{m+n} \in M$, contradicting
the fact that $M \in S$ means that it doesn't contain any powers of $r$!

Hence, $M$ is a prime ideal containing no powers of $r$.

$\square$
