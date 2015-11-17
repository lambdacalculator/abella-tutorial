module tutorial.

of zero num.
of (succ N) num :- of N num.
of (lam T1 x\M x) (arr T1 T) :-
  pi x\ of x T1 => of (M x) T.
of (app M1 M2) T :-
  of M1 (arr T2 T),
  of M2 T2.

val zero.
val (succ N) :- val N.
val (lam T M).

step (succ N) (succ N') :- step N N'.
step (app M1 M2) (app M1' M2) :- step M1 M1'.
step (app M1 M2) (app M1 M2') :- val M1, step M2 M2'.
step (app (lam T x\M x) M2) (M M2) :- val M2.

is_nat z.
is_nat (s N) :- is_nat N.

sum z N2 N2.
sum (s N1) N2 (s N3) :- sum N1 N2 N3.

size zero (s z).
size (succ N) (s N') :- size N N'.
size (lam T x\M x) (s N) :- pi x\ size x z => size (M x) N.
size (app M1 M2) (s N) :- size M1 N1, size M2 N2, sum N1 N2 N.
