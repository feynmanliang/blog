---
title: "Noetherian modules and a short exact sequence for quotients"
date: 2018-07-29T15:04:38-07:00
draft: false
tags:
- math
- algebra
---

Equivalent characterizations of the Noetherian condition
are plentiful (see [Hilbert's Basis Theorem](/posts/hilbert-basis-theorem.md) for more)
and using them interchangably can be a convenient and succinct way
to express proofs. In this post, we explore yet another characterization
of Noetherian conditions and bring attention to an important short exact sequence
related to quotient constructions which helps clarify why this condition should hold.

<!--more-->


## Claim

The claim of interest is the following:

> Let $M$ be a module and $M' \subset M$ a submodule.
> Then $M$ is Noetherian  if and only if $M'$ and $M / M'$ are both Noetherian.

## Intuition

My first intuition is that being Noetherian is a stronger finiteness condition
(both $M$ and all of the submodules of $M$ are finitely generated), so the
claim is saying that $M$ is "finite" iff "dividing" $M$ by a "finite" object
$M'$ is "finite."

## A first attempt at a proof

The $\Rightarrow$ direction is easy: submodules of $M'$ are also submodules of $M$
hence finitely generated so $M'$ is Noetherian. Also, submodules of $M / M'$
are of the form $N / M'$ where $N$ is a submodule of $M$ hence finitely generated.
Letting $N = (n_1,\ldots,n_k)$, we have that
$$N / M' = (n_1 + M', \ldots, n_k + M')$$
is finitely generated as well so $M / M'$ is Noetherian.

The $\Leftarrow$ direction was less obvious to me. We need to show that any submodule
$N \subset M$ is finitely generated, but the conditions are only on a particular
submodule $M'$. Following intuition, one might proceed along an argument that the cosets

$$\\{n + M' : n \in N \\}$$

partition $N$, so using the fact that $M'$ is finitely generated and $N / M'$
is a submodule of Noetherian $M / M'$ hence also finitely generated we have that
$N$ is partitioned by taking a finitely generated coset $M'$ and applying
a finitely generated set of translations $M' \mapsto n + M'$ to it. The generators
of the translations combbined with the generators of $m'$ *should* give the generators
of $N$.

### Where intuition breaks down

What I just wrote isn't quite true. The careful reader might note that
$n + M'$ may not be contained in $N$ (e.g. when $M' \not\subset N$).
This means that

1. The proposed "partition" of $N$ might strictly contain $N$ (so actually it's a disjoint covering)
2. If $M' \not\subset N$ is not a submodule, then $N / M'$ doesn't make any sense!

## Fixing the problem and the short exact sequence for closures

Both of these problems have to do with $M'$ not being a submodule of $N$.
To fix that, let's consider $N \cap M'$ which we know to both be a submodule
of $N$. Since we can both include it into $N$ and use it to form a quotient of $N$,
we have the following short exact sequence

$$0 \to N \cap M' \to N \to N / (N \cap M') \to 0$$

Although we're working with modules here, the same sequence oftentimes shows up
when working with quotients other settings (e.g. $M$ a group and $N
\trianglelefteq M$ a normal subgroup, $M$ a topological space and $N \subset M$
a subspace with the subset topology). I've found it worthwhile to commit this thing to memory.

With this sequence, the finiteness structure becomes strikingly obvious.
Notice $N \cap M' \subset M'$ so it's finitely generated. Furthermore,
$N / (N \cap M') \simeq (N + M') / M'$ (by the second isomorphism theorem) which
is a submodule of $M / M'$, so it's finitely generated as well. We need to show $N$ is
finitely generated to finish the proof, and the sequence makes it obvious
is that $N$ is sandwiched between two finitely generated objects

$$0 \to \underbrace{N \cap M'}\_{\text{fin. gen.}} \to N \to \underbrace{N / (N \cap M')}\_{\text{fin. gen.}} \to 0$$

The earlier attempt to make the intuition rigorous can now be cleanly argued:
Let $N \cap M' = (a_1, \ldots, a_r)$ (the finite generators of each coset)
and $N / (N \cap M') = (\bar{b_1}, \ldots, \bar{b_s})$ (the finite generators of the translations).
Then $N = (a_1, \ldots, a_r, b_1, \ldots, b_s)$.
