--(===):: a -> a -> Bool
--_ === _ = True
data T a where {T1 :: (a ~ Int) => a -> T a; T2 :: a -> T a; T3 :: (a ~ Bool) => a -> T a}
e = \x -> case x of {(T1 n, _) -> n; (T2 x, y) -> if (x===y) then x else y; (T3 b, _) -> b}
-- (T t, t) -> t
