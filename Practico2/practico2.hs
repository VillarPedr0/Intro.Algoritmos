-- a) soloPares :: [Int] -> [Int], que dada una lista de enteros xs devuelve una lista sólo con los
-- números pares contenidos en xs, en el mismo orden y con las mismas repeticiones (si las hubiera).
-- Por ejemplo: soloPares [3,0,-2,12] = [0,-2, 12]
soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs) 
    | x `mod` 2 == 0 = x:soloPares xs
    | x `mod` 2 /= 0 = soloPares xs

-- b) mayoresQue10 :: [Int] -> [Int], que dada una lista de enteros xs devuelve una lista sólo con los
-- números mayores que 10 contenidos en xs,
-- Por ejemplo: mayoresQue10 [3,0,-2, 12] = [12]
mayoresQue10 :: [Int] -> [Int]
mayoresQue10 [] = []
mayoresQue10 (x:xs)
    | x > 10 = x : mayoresQue10 xs
    | x < 10 = mayoresQue10 xs

-- c) mayoresQue :: Int-> [Int] -> [Int], que dado un entero n y una lista de enteros xs devuelve
-- una lista sólo con los números mayores que n contenidos en xs,
-- Por ejemplo: mayoresQue 2 [3,0,-2, 12] = [3,12]
mayoresQue :: Int -> [Int] -> [Int]
mayoresQue a [] = []
mayoresQue a (x:xs) 
    | x > a = x : mayoresQue a xs
    | otherwise = mayoresQue a xs

-- a) sumar1 :: [Int] -> [Int], que dada una lista de enteros le suma uno a cada uno de sus elementos.
-- Por ejemplo: sumar1 [3,0,-2] = [4,1,-1]
sumar1 :: [Int] -> [Int]
sumar1 [] = []
sumar1 (x:xs) = (x + 1) : sumar1 xs 

-- b) duplica :: [Int] -> [Int], que dada una lista de enteros duplica cada uno de sus elementos.
-- Por ejemplo: duplica [3,0,-2] = [6,0,-4]
duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = (x*2) : duplica xs

-- c) multiplica :: Int-> [Int] -> [Int], que dado un número n y una lista, multiplica cada uno de
-- los elementos por n.
-- Por ejemplo: multiplica 3 [3,0,-2] = [9,0,-6]
multiplica :: Int -> [Int] -> [Int]
multiplica a [] = []
multiplica a (x:xs) = x*a : multiplica a xs

-- a) todosMenores10 :: [Int] -> Bool, que dada una lista devuelve True si ésta consiste sólo de números menores que 10.
todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) 
    | x < 10 && todosMenores10 xs = True
    | otherwise = False 

-- b) hay0 :: [Int] -> Bool, que dada una lista decide si existe algún 0 en ella.
hay0 :: [Int] -> Bool
hay0 [] = True
hay0 (x:xs)
    | x == 0 || hay0 xs = True
    | otherwise = False

-- c) sum :: [Int] -> Int, que dada una lista devuelve la suma de todos sus elementos.
suma :: [Int] -> Int
suma [] = 0
suma (x:xs) = x + suma xs 

-- repartir :: [String] -> [String] -> [(String,String)] donde los elementos de la primera lista son nombres de personas y los de la segunda 
-- lista son cartas españolas es una función que devuelve una lista de pares que le asigna a cada persona una carta.
-- Ej: repartir ["Juan", "Maria"] ["1 de Copa", "3 de Oro", "7 de Espada", "2 de Basto"] = [("Juan","1 de Copa"), ("Maria","3 de Oro")] Defina la función recursivamente.
repartir :: [String] -> [String] -> [(String, String)]
repartir [] [] = []
repartir (x:xs) (y:ys) = (x,y) : repartir xs ys 

-- una lista de ternas donde el primer elemento representa el nombre de un alumno, el segundo el apellido, 
-- y el tercero la edad, la función que devuelve la lista de todos los apellidos de los alumnos en una de tipo unzip. 
-- Definir la función apellidos :: [(String, String, Int)] -> [String].
apellidos :: [(String, String, Int)] -> [String]
apellidos [] = []
apellidos ((a,b,c):xs) = b : apellidos xs

-- a) maximo :: [Int] -> Int, que calcula el máximo elemento de una lista de enteros.
-- Por ejemplo: maximo [2,5,1,7,3] = 7
maximo :: [Int] -> Int
maximo [] = 0
maximo (x:xs) = max x (maximo xs)

-- b) sumaPares :: [(Int, Int)] -> Int, que dada una lista de pares de números, devuelve la sumatoria de todos los números de todos los pares.
sumaPares :: [(Int, Int)] -> Int
sumaPares [] = 0
sumaPares ((a,b):xs) = (a + b) + sumaPares xs 

-- c) todos0y1 :: [Int] -> Bool, que dada una lista devuelve True si ésta consiste sólo de 0s y 1s.
-- Por ejemplo: todos0y1 [1,0,1,2,0,1] = False, todos0y1 [1,0,1,0,0,1] = True
todos0y1 :: [Int] -> Bool
todos0y1 [] = True
todos0y1 (x:y:xs) 
    | x == 0 && y == 1 && todos0y1 xs = True
    | otherwise = False

-- d) quitar0s :: [Int] -> [Int] que dada una lista de enteros devuelve la lista pero quitando todos
-- los ceros
quitar0s :: [Int] -> [Int] 
quitar0s [] = []
quitar0s (x:xs) 
    | x /= 0 = x : quitar0s xs
    | x == 0 = quitar0s xs

-- e) ultimo :: [a] -> a, que devuelve el último elemento de una lista.
ultimo :: [a] -> a
ultimo [] = error "Lista vacia"
ultimo (x:xs) = last xs

-- f ) repetir :: Int-> Int-> [Int], que dado un número n mayor o igual a 0 y un número k arbitrario
--construye una lista donde k aparece repetido n veces.
repetir :: Int -> Int -> [Int]
repetir 0 _ = []
repetir x y = y : repetir (x-1) y

-- g) concat :: [[a]] -> [a] que toma una lista de listas y devuelve la concatenación de todas ellas.
concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat xs

-- h) rev :: [a] -> [a] que toma una lista y devuelve una lista con los mismos elementos pero en orden
-- inverso.
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]

-- 8. Definí recursivamente los operadores básicos de listas: length, !!, take, drop, ++. Para los operadores
--take y drop deberás hacer recursión en ambos parámetros, en el parámetro lista y en el parámetro
--numérico.
length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + largo xs

index' :: [a] -> Int -> Maybe a
index' [] _ = Nothing
index' (x:_) 0 = Just x
index' (_:xs) n = ee xs (n-1)

takeN :: Int -> [a] -> [a]
takeN 0 _ = []
takeN _ [] = []
takeN n (x:xs) = x : takeN (n-1) xs

dropN :: Int -> [a] -> [a]
dropN 0 xs = xs
dropN _ [] = []
dropN n (_:xs) = dropN (n-1) xs

append :: [a] -> [a] -> [a]
append [] ys = ys
append (x:xs) ys = x : append xs ys