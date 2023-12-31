## Ryu si segava

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0a314af2-869f-4092-9ebf-65675de5df39/Untitled.png)

Se $F$ è normale lo si può pensare come un funtore analitico indotto come coprodotto di rappresentabili (senza quoziente per l'azione di $S_n$).

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/cbcb5a59-cbe7-4fd6-b0c8-bca69f83bc8c/Untitled.png)

dove $C_n=\frac1n\binom{2(n-1)}{n-1}$ è l'$n$-esimo *numero di Catalan*.

Tutto ciò si estende alle specie multivariate (lo sono davvero?)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d61ae0f7-8e52-4034-bf91-8ec2a254dcb4/Untitled.png)

Questo è vero per aggiunzione: $[{\bf Set}^A, {\bf Set}^B]\cong [B,[{\bf Set}^A,{\bf Set}]] =[{\bf Set}^A,{\bf Set}]^B$, quindi un "funtore normale" $F : {\bf Set}^A \to {\bf Set}^B$ è una famiglia $B$-parametrica di funtori normali ${\bf Set}^A \to {\bf Set}$.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/53306963-5c98-464a-89f5-7eb50130673a/Untitled.png)

Colpo segreto di Hokuto: ${\bf Set}^A$ è la coproduct completion di $A$ (guardata come categoria discreta).

Moreover

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2b0b3b8e-d2c4-40c7-8c64-e5e1875a4a86/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fc31267a-0001-44af-97f4-e60132fbd3bf/Untitled.png)

The cartesian closed isomorphism takes the following form:

$${\bf CAAcc}_N({\bf Set}^{A+B},{\bf Set}^C)\cong {\bf CAAcc}_N({\bf Set}^A, {\bf Set}^{\exp B \times C})$$

Two explanations are in order:

1. The cartesian product ${\bf Set}^A\times {\bf Set}^B$ in this category corresponds to the coproduct in $\bf Set$, under the equivalence ${\bf Set}^A\cong {\bf Set}/A$ and using that $\bf Set$ is an extensive category:

$${\bf Set}^A \times {\bf Set}^B\cong {\bf Set}/A\times {\bf Set}/B\cong {\bf Set}/(A+B)\cong {\bf Set}^{A+B}$$

1. The cartesian closure can be derived as a corollary from a stronger result:

$$[{\bf Set}^A,{\bf Set}^B]_N \cong {\bf Set}^{\exp A\times B}$$

    If this is true, then

$$\begin{align*} [{\bf Set}^{X+Y}, {\bf Set}^B]_N & \cong {\bf Set}^{\exp(X+Y)\times B}\\ &\cong {\bf Set}^{(\exp X \times \exp Y)\times B}\\ &\cong {\bf Set}^{\exp X \times \exp Y\times B} \\&\cong [{\bf Set}^X, {\bf Set}^{\exp Y\times B}]_N\end{align*}$$

Finally, given the definition of what is a normal functor ${\bf Set}^A \to {\bf Set}^B$, we can further restrict our attention to the isomorphism

$$[{\bf Set}^A, {\bf Set}]_N\cong {\bf Set}^{\exp A}$$

obtained when $B=1$ is the terminal category. We shall prove this formally: let

$$\exp A \to {\bf Set}^A$$

be the functor that regards a multiset in $A$ as an $A$-indexed family of objects; this means that the multiset $\sum_{a\in A} n_a  a$ defines a function $A \to {\bf Set}$ sending $a$ to the finite set $n_a := \{1,\dots,n_a\}$. We keep this functor nameless.

Questa dimostrazione purtroppo è bruttissima