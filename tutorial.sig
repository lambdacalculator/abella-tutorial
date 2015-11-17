sig tutorial.

kind tp type.
type num  tp.
type arr  tp -> tp -> tp.

kind tm type.
type zero tm.
type succ tm -> tm.
type lam  tp -> (tm -> tm) -> tm.
type app  tm -> tm -> tm.

type of   tm -> tp -> o.
type val  tm -> o.
type step tm -> tm -> o.

kind nat type.
type z nat.
type s nat -> nat.

type is_nat nat -> o.
type sum  nat -> nat -> nat -> o.     % (++-)
type size tm -> nat -> o.             % (+-)



