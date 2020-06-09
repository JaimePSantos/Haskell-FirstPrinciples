i :: a -> a
i a = a 

c:: a->b->a
c x y = x

c' :: a -> b -> b
c' x y = y

r:: [a] -> [a]
r a = a

co :: (b->c) -> (a->b) -> a -> b
co f g a = g a 

a:: (a->b)->a->a
a f x = x


a':: (a->b)->a->b
a' f x = f x