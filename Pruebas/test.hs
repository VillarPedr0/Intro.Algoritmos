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

--tipo de dato con :t + dato, devuelve por consola el tipo de dato del valor dado

-- funcion que multiplica por dos
multiplicaDos x = x + x

-- multiplica por dos solo lso menores o iguales a 100 y les suma 1
doubleSmallNumber x = if x > 100 then x else x*2

boomBang xs = [ if x < 20 then "Boom!!" else "Bang!!" | x <- xs, odd x ]