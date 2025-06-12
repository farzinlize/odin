$P$ -> set of places
$T$ -> set of transitions
$F$ -> set of arcs
$N = (P, T, F)$ -> net structure

$\overline{pt}$ -> tokens that **flow through the arc** from place $p$ to transition $t$
$\overline{tp}$ -> برعکس بالایی

$U$ -> every element in universe
$a$ as a **multiset** -> $a: U \rightarrow \mathbb{N}$ -> is a *function* that maps all the elements of universe such as $u$ to their number of occurrence in $a$ multiset 

set $\mathcal{M}(U)$ or $\mathcal{M}$ for short -> set of all possible multiset over universe $U$

$[\bullet, \bullet, \circ]$ is a multiset where $[\bullet, \bullet, \circ](\circ)=1$ and $[\bullet, \bullet, \circ](\bullet)=2$

> **Marking** is the state of system, snapshot of all tokens inside every place at the moment.

marking $M: P\rightarrow \mathcal{M}$ -> is a function that maps every place in $P$ to a multiset
$M_0$ is initial marking

$\overline{pt} \in \mathcal{M}$ and $\overline{tp} \in \mathcal{M}$

$\overline{pt} = [\space]$ -> there is no arc that start in $p$ and ends at $t$

> a marking such as $M$ *enables* the transition $t$ if $M(p)\geq \overline{pt}$  for each arc $(p,t)$ 

if transition $t$ occurs, it results in a *step*:
$M \overset{t} \longrightarrow M'$  and $M'(p)=_{\text{def}} M(p) - \overline{pt} + \overline{tp}$

> **Expression as Labels**: if an expression is written onto an **arc** the result is a **multiset** and if it's written into a transition the result is logical boolean *true* or *false* 

arcs *around* transition $t$ -> all arcs that end or start at $t$ 

a ***mode*** of a transition $t$ -> $\beta:(x_1=u_1, x_2=u_2, ..., x_n=u_n)$
$x_1, x_2, .., x_n$ are variables around transition $t$

transition $t$ has an expression $a$ as label, a mode $\beta$ of $t$ creates a logical value $\beta(a)$ and if this transition occurs the resulting step is:
$$M \overset{t,\beta} \longrightarrow M'$$
> $M$ enables $t$ in mode $\beta$


