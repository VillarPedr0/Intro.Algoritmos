--funcion que toma un entero, luego otro entero, y devuelve otro entero
division :: Int -> Int -> Int
division x y = x `div` y

--input y output en funciones
mostrar :: IO ()
mostrar = putStrLn "Te muestro"

--factorial version 1
fact :: (Integral a) => a -> a 
fact n = product [1..n]
--factorial version 2
fac :: (Integral a) => a -> a
fac 0 = 1
fac n = n * fac (n - 1)

--serie de fibonacci
fibn n = fibs !! n
    where
    fibs = 0 : 1 : map f [2..]
    f n = fibs !! (n-1) + fibs !! (n-2)

